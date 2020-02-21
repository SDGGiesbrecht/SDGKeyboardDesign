/*
 WindowsMain.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import XCTest

@testable import SDGKeyboardDesignDocumentationExampleTests
@testable import SDGKeyboardDesignTests

extension ReadMeExampleTests {
  static let windowsTests: [XCTestCaseEntry] = [
    testCase([
      ("testReadMeExample", testReadMeExample),
    ])
  ]
}

extension APITests {
  static let windowsTests: [XCTestCaseEntry] = [
    testCase([
      ("testArrangements", testArrangements),
      ("testKeyboardLayout", testKeyboardLayout),
      ("testKeyboardLayoutBundle", testKeyboardLayoutBundle),
    ])
  ]
}

extension InternalTests {
  static let windowsTests: [XCTestCaseEntry] = [
    testCase([
      ("testKeyLayoutFile", testKeyLayoutFile),
      ("testLayer", testLayer),
      ("testSymbols", testSymbols),
    ])
  ]
}

var tests = [XCTestCaseEntry]()
tests += ReadMeExampleTests.windowsTests
tests += APITests.windowsTests
tests += InternalTests.windowsTests

XCTMain(tests)
