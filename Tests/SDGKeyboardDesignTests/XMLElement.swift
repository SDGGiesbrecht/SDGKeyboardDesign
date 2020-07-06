/*
 XMLElement.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import Foundation

import SDGLogic

extension XMLElement {

  var recursiveStates: Set<String> {
    var result: Set<String> = []
    if let state = attribute(forName: "state")?.stringValue {
      result.insert(state)
    }
    if let next = attribute(forName: "next")?.stringValue {
      result.insert(next)
    }
    for child in (children ?? []).lazy.compactMap({ $0 as? XMLElement }) {
      result.formUnion(child.recursiveStates)
    }
    result.remove("none")  // Special
    return result
  }
}
