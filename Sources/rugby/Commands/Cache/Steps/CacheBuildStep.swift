//
//  CacheBuildStep.swift
//  
//
//  Created by v.khorkov on 31.01.2021.
//

import Files
import XcodeProj

final class CacheBuildStep: Step {
    let name = "Build"
    let verbose: Bool
    let isLast: Bool
    let progress: RugbyProgressBar

    private let command: Cache

    init(command: Cache, logFile: File, isLast: Bool = false) {
        self.command = command
        self.verbose = command.verbose
        self.isLast = isLast
        self.progress = RugbyProgressBar(title: name, logFile: logFile, verbose: verbose)
    }

    func run(_ input: CachePrepareStep.Output) throws -> CachePrepareStep.Output {
        guard let scheme = input.scheme else {
            progress.update(info: "Skip".yellow)
            done()
            return input
        }

        progress.update(info: "Building ⏱".yellow)
        do {
            try XcodeBuild(project: .podsProject,
                           scheme: scheme,
                           sdk: command.sdk,
                           arch: command.arch).build()
        } catch {
            let podsProject = try XcodeProj(pathString: .podsProject)
            podsProject.removeTarget(name: scheme)
            try podsProject.write(pathString: .podsProject, override: true)
            progress.update(info: "Full build log: ".yellow + .buildLog)
            throw error
        }

        progress.update(info: "Update checksums".yellow)
        try CacheManager().save(CacheFile(checksums: input.checksums,
                                          sdk: command.sdk,
                                          arch: command.arch))

        done()
        return input
    }
}
