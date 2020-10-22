/*
 XMLElement.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

// #workaround(Swift 5.3, Web lacks Foundation.)
#if !os(WASI)
  import Foundation
  #if canImport(FoundationXML)
    import FoundationXML
  #endif

  import SDGKeyboardDesignXMLShims

  extension XMLElement {

    internal func addAttribute(name: String, value: String) {
      let attribute = XMLNode.attribute(withName: name, stringValue: value) as! XMLNode
      addAttribute(attribute)
    }
  }
#endif
