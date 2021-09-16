/*
 RegressionTests.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2020–2021 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import SDGMathematics
import SDGText
import SDGLocalization

import SDGKeyboardDesign

import XCTest

import SDGXCTestUtilities
import SDGPersistenceTestUtilities

final class RegressionTests: TestCase {

  func testNegativeIdentifierUsesASCIIMinus() {
    // Untracked.

    #if !PLATFORM_SUFFERS_SEGMENTATION_FAULTS
      let keyboard = KeyboardLayout(
        name: UserFacing<StrictString, TestLocalization>({ _ in "Negative Identifier" }),
        icon: nil,
        layers: [
          .noModifiers: [
            .leftLittleHome: "a",
            .leftRingHome: "b",
            .leftMiddleHome: "c",
          ]
        ],
        deadKeyLabels: [:],
        deadKeyMappings: [:],
        symbols: [:],
        uniqueIdentifier: −1,
        script: .none,
        targetedLanguage: nil
      )
      let xml = keyboard.keyLayoutFile()

      XCTAssert(xml.allSatisfy({ $0.value < 0x2212 }))
    #endif
  }

  func testNonBMPCharactersEscaped() {
    // Untracked.

    #if !PLATFORM_SUFFERS_SEGMENTATION_FAULTS
      let keyboard = KeyboardLayout(
        name: UserFacing<StrictString, TestLocalization>({ _ in "Non‐BMP Characters" }),
        icon: nil,
        layers: [
          .noModifiers: [
            .rightIndexHome: Symbol.key,
            .leftLittleHome: "C",
            .leftRingHome: "a",
            .leftMiddleHome: "n",
            .leftIndexHome: "d",
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

      // Make sure it wasn’t just optimized away.
      XCTAssert(xml.contains("&#x1F1E8;&#x1F1E6;"))

      XCTAssert(xml.allSatisfy({ $0.value < 0x10000 }))
    #endif
  }
}
