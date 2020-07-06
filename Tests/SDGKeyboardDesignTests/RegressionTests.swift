/*
 RegressionTests.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import SDGMathematics
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
    let numberOfStates: Int = 2 ↑ 0
    for integer in 1...numberOfStates {
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
    let states = xml.rootElement()!.recursiveStates
    XCTAssertEqual(states.count, numberOfStates)
  }
}
