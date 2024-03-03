// Generated using Sourcery 2.1.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable all

import Foundation
@testable import RugbyFoundation

final class IInternalUseBinariesManagerMock: IInternalUseBinariesManager {

    // MARK: - use

    var useTargetsXcargsDeleteSourcesThrowableError: Error?
    var useTargetsXcargsDeleteSourcesCallsCount = 0
    var useTargetsXcargsDeleteSourcesCalled: Bool { useTargetsXcargsDeleteSourcesCallsCount > 0 }
    var useTargetsXcargsDeleteSourcesReceivedArguments: (targets: TargetsScope, xcargs: [String], deleteSources: Bool)?
    var useTargetsXcargsDeleteSourcesReceivedInvocations: [(targets: TargetsScope, xcargs: [String], deleteSources: Bool)] = []
    var useTargetsXcargsDeleteSourcesClosure: ((TargetsScope, [String], Bool) async throws -> Void)?

    func use(targets: TargetsScope, xcargs: [String], deleteSources: Bool) async throws {
        if let error = useTargetsXcargsDeleteSourcesThrowableError {
            throw error
        }
        useTargetsXcargsDeleteSourcesCallsCount += 1
        useTargetsXcargsDeleteSourcesReceivedArguments = (targets: targets, xcargs: xcargs, deleteSources: deleteSources)
        useTargetsXcargsDeleteSourcesReceivedInvocations.append((targets: targets, xcargs: xcargs, deleteSources: deleteSources))
        try await useTargetsXcargsDeleteSourcesClosure?(targets, xcargs, deleteSources)
    }

    // MARK: - use

    public var useTargetsRegexExceptTargetsRegexXcargsDeleteSourcesThrowableError: Error?
    public var useTargetsRegexExceptTargetsRegexXcargsDeleteSourcesCallsCount = 0
    public var useTargetsRegexExceptTargetsRegexXcargsDeleteSourcesCalled: Bool { useTargetsRegexExceptTargetsRegexXcargsDeleteSourcesCallsCount > 0 }
    public var useTargetsRegexExceptTargetsRegexXcargsDeleteSourcesReceivedArguments: (targetsRegex: NSRegularExpression?, exceptTargetsRegex: NSRegularExpression?, xcargs: [String], deleteSources: Bool)?
    public var useTargetsRegexExceptTargetsRegexXcargsDeleteSourcesReceivedInvocations: [(targetsRegex: NSRegularExpression?, exceptTargetsRegex: NSRegularExpression?, xcargs: [String], deleteSources: Bool)] = []
    public var useTargetsRegexExceptTargetsRegexXcargsDeleteSourcesClosure: ((NSRegularExpression?, NSRegularExpression?, [String], Bool) async throws -> Void)?

    public func use(targetsRegex: NSRegularExpression?, exceptTargetsRegex: NSRegularExpression?, xcargs: [String], deleteSources: Bool) async throws {
        if let error = useTargetsRegexExceptTargetsRegexXcargsDeleteSourcesThrowableError {
            throw error
        }
        useTargetsRegexExceptTargetsRegexXcargsDeleteSourcesCallsCount += 1
        useTargetsRegexExceptTargetsRegexXcargsDeleteSourcesReceivedArguments = (targetsRegex: targetsRegex, exceptTargetsRegex: exceptTargetsRegex, xcargs: xcargs, deleteSources: deleteSources)
        useTargetsRegexExceptTargetsRegexXcargsDeleteSourcesReceivedInvocations.append((targetsRegex: targetsRegex, exceptTargetsRegex: exceptTargetsRegex, xcargs: xcargs, deleteSources: deleteSources))
        try await useTargetsRegexExceptTargetsRegexXcargsDeleteSourcesClosure?(targetsRegex, exceptTargetsRegex, xcargs, deleteSources)
    }

    // MARK: - use

    public var useTargetsKeepGroupsThrowableError: Error?
    public var useTargetsKeepGroupsCallsCount = 0
    public var useTargetsKeepGroupsCalled: Bool { useTargetsKeepGroupsCallsCount > 0 }
    public var useTargetsKeepGroupsReceivedArguments: (targets: [String: ITarget], keepGroups: Bool)?
    public var useTargetsKeepGroupsReceivedInvocations: [(targets: [String: ITarget], keepGroups: Bool)] = []
    public var useTargetsKeepGroupsClosure: (([String: ITarget], Bool) async throws -> Void)?

    public func use(targets: [String: ITarget], keepGroups: Bool) async throws {
        if let error = useTargetsKeepGroupsThrowableError {
            throw error
        }
        useTargetsKeepGroupsCallsCount += 1
        useTargetsKeepGroupsReceivedArguments = (targets: targets, keepGroups: keepGroups)
        useTargetsKeepGroupsReceivedInvocations.append((targets: targets, keepGroups: keepGroups))
        try await useTargetsKeepGroupsClosure?(targets, keepGroups)
    }
}

// swiftlint:enable all