/*
 APITests.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
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
    let layout = SDGKeyboardDesignTests.testKeyboardLayout

    let keylayoutFile = layout.keyLayoutFile()
    compare(
      String(keylayoutFile),
      against: specificationDirectory.appendingPathComponent("Key Layout.txt"),
      overwriteSpecificationInsteadOfFailing: false
    )
  }

  func testKeyboardLayoutBundle() throws {
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
  }
}
