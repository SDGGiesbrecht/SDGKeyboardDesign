/*
 XMLNode.Options.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 */

// #workaround(Swift 5.1.2, In the core library variant of Foundation, “init() is not yet implemented”.)
#if os(iOS) || os(watchOS) || os(tvOS) || !canImport(ObjectiveC)

  extension XMLNode {

    public struct Options: OptionSet {

      private static var index: UInt = 0
      private static func nextRawValue() -> UInt {
        let value = index
        index += 1
        return 1 << value
      }
      public static let nodeCompactEmptyElement = Options(rawValue: nextRawValue())
      public static let nodePrettyPrint = Options(rawValue: nextRawValue())

      // MARK: - OptionSet

      public init(rawValue: UInt) {
        self.rawValue = rawValue
      }

      public var rawValue: UInt
    }
  }

#endif
