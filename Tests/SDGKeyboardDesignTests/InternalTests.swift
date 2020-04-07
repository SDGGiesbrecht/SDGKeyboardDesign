/*
 InternalTests.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import Foundation
#if canImport(FoundationXML)
  import FoundationXML
#endif

import SDGText

@testable import SDGKeyboardDesign

import XCTest

import SDGXCTestUtilities

final class InternalTests: TestCase {

  func testKeyLayoutFile() throws {
    let xml = testKeyboardLayout.keyLayoutXML()
    #if !(os(tvOS) || os(iOS) || os(watchOS))
      try xml.validate()
    #endif
  }

  func testLayer() {
    _ = Layer.noModifiers.index
    for layer in Layer.allCases {
      _ = layer.unshifted
    }
  }

  func testSymbols() {
    let dictionary: [StrictString: StrictString] = [
      "plus": "+",
      "minus": "−",
      "percent": "%",
      "dollar": "$",
      "dollars": "$",
    ]

    let mapping = Symbol.mapping(from: dictionary)
    XCTAssertEqual(mapping["m"]?["¤"], "−")
    XCTAssertEqual(mapping["l"]?["¤p"], "+")
    XCTAssertEqual(mapping["d"]?["¤"], "$")

    let states = Symbol.states(from: mapping)
    XCTAssert(states.contains("¤p"))
  }
}
