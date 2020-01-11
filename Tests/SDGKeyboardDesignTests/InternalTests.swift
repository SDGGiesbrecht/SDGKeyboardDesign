/*
 InternalTests.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
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
    // #workaround(Swift 5.1.3, In the core library variant of Foundation, “init() is not yet implemented”.)
    #if !(os(iOS) || os(watchOS) || os(tvOS)) && canImport(ObjectiveC)
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
      "dollars": "$"
    ]

    let mapping = Symbol.mapping(from: dictionary)
    XCTAssertEqual(mapping["m"]?["¤"], "−")
    XCTAssertEqual(mapping["l"]?["¤p"], "+")
    XCTAssertEqual(mapping["d"]?["¤"], "$")

    let states = Symbol.states(from: mapping)
    XCTAssert(states.contains("¤p"))
  }
}
