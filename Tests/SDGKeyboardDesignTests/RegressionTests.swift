/*
 RegressionTests.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import SDGText
import SDGLocalization

import SDGKeyboardDesign

import XCTest

import SDGXCTestUtilities
import SDGPersistenceTestUtilities

final class RegressionTests: TestCase {

  func testNonBMPCharactersEscaped() {
    // Untracked.

    let keyboard = KeyboardLayout(
      name: UserFacing<StrictString, TestLocalization>({ _ in "Non‐BMP Characters" }),
      icon: nil,
      layers: [
        .noModifiers: [
          .rightIndexHome: Symbol.key,
          .leftLittleHome: "C",
          .leftRingHome: "a",
          .leftMiddleHome: "n",
          .leftIndexHome: "d"
        ]
      ],
      deadKeyLabels: [:],
      deadKeyMappings: [:],
      symbols: ["Canada": "🇨🇦"],
      uniqueIdentifier: 0,
      script: .none,
      targetedLanguage: nil
    )
    let xml = keyboard.keyLayoutFile()
    XCTAssert(xml.contains("&#x1"))
    XCTAssert(xml.allSatisfy({ $0.value < 0x10000 }))
  }
}
