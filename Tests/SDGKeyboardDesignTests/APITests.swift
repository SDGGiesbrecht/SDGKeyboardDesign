/*
 APITests.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import SDGPersistence
import SDGKeyboardDesign

import XCTest

import SDGXCTestUtilities
import SDGPersistenceTestUtilities

final class APITests: TestCase {

  func testArrangements() {
    #if !os(Android)  // #workaround(Swift 5.1.3, Illegal instruction.)
      XCTAssertEqual(Arrangement.ansiLowercase[.rightIndexHome], "j")
      XCTAssertEqual(Arrangement.ansiUppercase[.leftIndexHome], "F")
    #endif
  }

  func testKeyboardLayout() throws {
    #if !os(Android)  // #workaround(Swift 5.1.3, Illegal instruction.)
      let layout = SDGKeyboardDesignTests.testKeyboardLayout

      let keylayoutFile = layout.keyLayoutFile()
      compare(
        String(keylayoutFile),
        against: specificationDirectory.appendingPathComponent("Key Layout.txt"),
        overwriteSpecificationInsteadOfFailing: false
      )
    #endif
  }

  func testKeyboardLayoutBundle() throws {
    #if !os(Android)  // #workaround(Swift 5.1.3, Illegal instruction.)
      let bundle = SDGKeyboardDesignTests.testKeyboardLayoutBundle

      let infoPlist = bundle.macOSKeyboardLayoutBundleInfoPlist()
      compare(
        String(infoPlist),
        against: specificationDirectory.appendingPathComponent("Information Property List.txt"),
        overwriteSpecificationInsteadOfFailing: false
      )

      let unusualBundle = withUnusualIdentifier.macOSKeyboardLayoutBundleInfoPlist()
      compare(
        String(unusualBundle),
        against: specificationDirectory.appendingPathComponent("Unusual Identifier.txt"),
        overwriteSpecificationInsteadOfFailing: false
      )

      let strings = bundle.macOSKeyboardLayoutBundleLocalizedInfoPlistStrings(.englishCanada)
      compare(
        String(strings),
        against: specificationDirectory.appendingPathComponent(
          "Information Property List Strings.txt"
        ),
        overwriteSpecificationInsteadOfFailing: false
      )

      try FileManager.default.withTemporaryDirectory(appropriateFor: nil) { temporary in
        try bundle.generate(in: temporary)
      }
    #endif
  }
}
