/*
 TestKeyboardLayout.swift

 This source file is part of the SDGKeyboardDesign open source project.

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 */

import Foundation

import SDGText
import SDGLocalization

import SDGKeyboardDesign

import SDGPersistenceTestUtilities

enum TestLocalization: String, InputLocalization {
  case englishCanada = "en\u{2D}CA"
  static let fallbackLocalization = TestLocalization.englishCanada
}

let testKeyboardLayout = KeyboardLayout<TestLocalization>(
  name: UserFacing<StrictString, TestLocalization>({ localization in
    switch localization {
    case .englishCanada:
      return "Test Keyboard"
    }
  }),
  icon: testSpecificationDirectory().appendingPathComponent("MockIcon.icns"),
  layers: [
    .noModifiers: [
      .rightIndexHome: "a"
    ],
    .shift: [
      .rightMiddleHome: "."
    ],
    .option: [
      .rightRingHome: DeadKey.stroke
    ]
  ],
  uniqueIdentifier: 1_234_567,
  script: .latinEastern,
  targetedLanguage: .englishCanada
)

let testKeyboardLayoutBundle = KeyboardLayoutBundle(
  name: UserFacing<StrictString, TestLocalization>({ localization in
    switch localization {
    case .englishCanada:
      return "Test Keyboard"
    }
  }),
  layouts: [testKeyboardLayout],
  copyright: UserFacing<StrictString, TestLocalization>({ localization in
    switch localization {
    case .englishCanada:
      return "©0000"
    }
  }),
  bundleIdentifier: "tld.domain.Test Keyboard"
)

let withUnusualIdentifier = KeyboardLayoutBundle(
  name: UserFacing<StrictString, TestLocalization>({ localization in
    switch localization {
    case .englishCanada:
      return "Unusual Identifier"
    }
  }),
  layouts: [testKeyboardLayout],
  copyright: UserFacing<StrictString, TestLocalization>({ _ in "" }),
  bundleIdentifier: "Unusual Identifier"
)

let specificationDirectory = testSpecificationDirectory().appendingPathComponent("Test Keyboard")
