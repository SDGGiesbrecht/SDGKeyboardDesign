/*
 XMLElement.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import Foundation
#if !os(WASI)  // #workaround(Swift 5.3.1, Web lacks CFXMLInterace.)
  #if canImport(FoundationXML)
    import FoundationXML
  #endif
#endif

import SDGKeyboardDesignXMLShims

extension XMLElement {

  internal func addAttribute(name: String, value: String) {
    let attribute = XMLNode.attribute(withName: name, stringValue: value) as! XMLNode
    addAttribute(attribute)
  }
}
