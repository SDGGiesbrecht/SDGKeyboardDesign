/*
 InternalTests.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2022 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import Foundation

import SDGCollections
import SDGText

@testable import SDGKeyboardDesign

import XCTest

import SDGXCTestUtilities

final class InternalTests: TestCase {

  func testKeyLayoutFile() throws {
    var xml = testKeyboardLayout.keyLayoutFile()
    // These trip bugs in Foundation’s XML parser.
    xml.replaceMatches(for: "&#x0001;", with: "_")
    xml.replaceMatches(for: "&#x0003;", with: "_")
    xml.replaceMatches(for: "&#x0004;", with: "_")
    xml.replaceMatches(for: "&#x0005;", with: "_")
    xml.replaceMatches(for: "&#x0008;", with: "_")
    xml.replaceMatches(for: "&#x000B;", with: "_")
    xml.replaceMatches(for: "&#x000C;", with: "_")
    xml.replaceMatches(for: "&#x0010;", with: "_")
    xml.replaceMatches(for: "&#x001B;", with: "_")
    xml.replaceMatches(for: "&#x001C;", with: "_")
    xml.replaceMatches(for: "&#x001D;", with: "_")
    xml.replaceMatches(for: "&#x001E;", with: "_")
    xml.replaceMatches(for: "&#x001F;", with: "_")
    #if os(macOS)  // Only macOS actually has the DTD.
      try XMLDocument(data: xml.file).validate()
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
