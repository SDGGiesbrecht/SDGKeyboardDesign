/*
 XMLElement.swift

 This source file is part of the SDGKeyboardDesign open source project.

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 */

import Foundation

import SDGKeyboardDesignXMLShims

extension XMLElement {

  internal func addAttribute(name: String, value: String) {
    let attribute = XMLNode.attribute(withName: name, stringValue: value) as! XMLNode
    addAttribute(attribute)
  }
}
