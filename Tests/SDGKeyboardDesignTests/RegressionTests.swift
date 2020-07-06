/*
 RegressionTests.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import SDGText
import SDGPersistence
import SDGLocalization

import SDGKeyboardDesign

import XCTest

import SDGXCTestUtilities
import SDGPersistenceTestUtilities

final class RegressionTests: TestCase {

  func testStateLimit() throws {
    // Untracked.

    // Without handling of overflow, this keyboard would have too many dead key states, and macOS would refuse to load it.
    let keyboard = KeyboardLayout(
      name: UserFacing<StrictString, TestLocalization>({ _ in "Limit Test" }),
      icon: nil,
      layers: [:],
      deadKeyLabels: [:],
      deadKeyMappings: [:],
      symbols: [:],
      uniqueIdentifier: 1_234_567,
      script: .none,
      targetedLanguage: nil
    )
    let bundle = KeyboardLayoutBundle(
      name: UserFacing<StrictString, TestLocalization>({ _ in "Limit Test" }),
      layouts: [keyboard],
      copyright: UserFacing<StrictString, TestLocalization>({ _ in "" }),
      bundleIdentifier: "ca.solideogloria.SDGKeyboardDesign.Limit"
    )
    let specification = testSpecificationDirectory().appendingPathComponent("Limit Test")
    try bundle.generate(in: specification)
  }
}
