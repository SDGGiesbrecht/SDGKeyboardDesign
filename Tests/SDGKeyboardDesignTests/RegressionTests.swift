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

@testable import SDGKeyboardDesign

import XCTest

import SDGXCTestUtilities
import SDGPersistenceTestUtilities

final class RegressionTests: TestCase {

  func testStateLimit() throws {
    // Untracked.

    // Without handling of overflow, this keyboard would have too many dead key states, and macOS would refuse to load it.
    var deadKeyLabels: [StrictString: StrictString] = [:]
    for integer in 1...1 {
      deadKeyLabels[integer.inDigits()] = integer.inRomanNumerals()
    }
    let keyboard = KeyboardLayout(
      name: UserFacing<StrictString, TestLocalization>({ _ in "Limit Test" }),
      icon: nil,
      layers: [:],
      deadKeyLabels: deadKeyLabels,
      deadKeyMappings: [:],
      symbols: [:],
      uniqueIdentifier: 1_234_567,
      script: .none,
      targetedLanguage: nil
    )
    let specification = testSpecificationDirectory().appendingPathComponent("Limit Test.keylayout")
    let source = keyboard.keyLayoutFile()
    compare(String(source), against: specification, overwriteSpecificationInsteadOfFailing: false)

    let xml = keyboard.keyLayoutXML()
    let keyboardElement = xml.children?.first(where: { $0.name == "keyboard" })
    XCTAssertNotNil(keyboardElement)
    print(keyboardElement)
  }
}
