/*
 XMLElement.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht.

 Soli Deo gloria.
 */

import Foundation
#if canImport(FoundationXML)
  import FoundationXML
#endif

import SDGKeyboardDesignXMLShims

#if !canImport(ObjectiveC)
  // #workaround(Swift 5.1.3, In the core library variant of Foundation, “init() is not yet implemented”.)
  internal typealias XMLDocument = SDGKeyboardDesignXMLShims.XMLDocument
  internal typealias XMLDTD = SDGKeyboardDesignXMLShims.XMLDTD
  internal typealias XMLElement = SDGKeyboardDesignXMLShims.XMLElement
  internal typealias XMLNode = SDGKeyboardDesignXMLShims.XMLNode
#endif

extension XMLElement {

  internal func addAttribute(name: String, value: String) {
    let attribute = XMLNode.attribute(withName: name, stringValue: value) as! XMLNode
    addAttribute(attribute)
  }
}
