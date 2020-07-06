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

extension SDGKeyboardDesignDocumentationExampleTests.ReadMeExampleTests {
  static let windowsTests: [XCTestCaseEntry] = [
    testCase([
      ("testReadMeExample", testReadMeExample)
    ])
  ]
}

extension SDGKeyboardDesignTests.APITests {
  static let windowsTests: [XCTestCaseEntry] = [
    testCase([
      ("testArrangements", testArrangements),
      ("testKeyboardLayout", testKeyboardLayout),
      ("testKeyboardLayoutBundle", testKeyboardLayoutBundle),
    ])
  ]
}

extension SDGKeyboardDesignTests.InternalTests {
  static let windowsTests: [XCTestCaseEntry] = [
    testCase([
      ("testKeyLayoutFile", testKeyLayoutFile),
      ("testLayer", testLayer),
      ("testSymbols", testSymbols),
    ])
  ]
}

extension SDGKeyboardDesignTests.RegressionTests {
  static let windowsTests: [XCTestCaseEntry] = [
    testCase([
      ("testStateLimit", testStateLimit)
    ])
  ]
}

var tests = [XCTestCaseEntry]()
tests += SDGKeyboardDesignDocumentationExampleTests.ReadMeExampleTests.windowsTests
tests += SDGKeyboardDesignTests.APITests.windowsTests
tests += SDGKeyboardDesignTests.InternalTests.windowsTests
tests += SDGKeyboardDesignTests.RegressionTests.windowsTests

XCTMain(tests)
