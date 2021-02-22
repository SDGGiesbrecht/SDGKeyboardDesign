/*
 APITests.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2021 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import SDGPersistence

import SDGKeyboardDesign

import XCTest

import SDGXCTestUtilities
import SDGPersistenceTestUtilities

final class APITests: TestCase {

  func testArrangements() {
    XCTAssertEqual(Arrangement.ansiLowercase[.rightIndexHome], "j")
    XCTAssertEqual(Arrangement.ansiUppercase[.leftIndexHome], "F")
  }

  func testKeyboardLayout() throws {
    // #workaround(Swift 5.3.3, Segmentation fault.)
    #if !os(Windows)
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
    let bundle = SDGKeyboardDesignTests.testKeyboardLayoutBundle

    #if !PLATFORM_LACKS_FOUNDATION_PROPERTY_LIST_SERIALIZATION_DATA_FROM_PROPERTY_LIST_FORMAT_OPTIONS
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
    #endif

    let strings = bundle.macOSKeyboardLayoutBundleLocalizedInfoPlistStrings(.englishCanada)
    compare(
      String(strings),
      against: specificationDirectory.appendingPathComponent(
        "Information Property List Strings.txt"
      ),
      overwriteSpecificationInsteadOfFailing: false
    )

    #if !PLATFORM_LACKS_FOUNDATION_FILE_MANAGER
      try FileManager.default.withTemporaryDirectory(appropriateFor: nil) { temporary in
        try bundle.generate(in: temporary)
      }
    #endif
  }
}
