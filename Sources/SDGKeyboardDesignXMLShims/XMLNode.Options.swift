/*
 XMLNode.Options.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2021 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

// #workaround(Swift 5.3.1, Web lacks CFXMLInterace.)
#if os(WASI) || os(tvOS) || os(iOS) || os(watchOS)

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
