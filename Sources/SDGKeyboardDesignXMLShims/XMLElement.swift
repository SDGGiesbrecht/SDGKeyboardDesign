/*
 XMLElement.swift

 This source file is part of the SDGKeyboardDesign open source project.

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 */

// #workaround(Swift 5.1.2, In the core library variant of Foundation, “init() is not yet implemented”.)
#if canImport(FoundationXML)
import FoundationXML
#endif

// #workaround(Swift 5.1.2, In the core library variant of Foundation, “init() is not yet implemented”.)
#if os(iOS) || os(watchOS) || os(tvOS) || !canImport(ObjectiveC)
  import SDGLogic

  public class XMLElement: XMLNode {

    // MARK: - Initialization

    public init(name: String) {
      super.init()
      self.name = name
    }

    // MARK: - Properties

    private var attributes: [XMLNode] = []
    private var children: [XMLNode] = []

    // MARK: - Methods

    public func addAttribute(_ attribute: XMLNode) {
      attributes.append(attribute)
    }
    public func addChild(_ child: XMLNode) {
      children.append(child)
    }

    internal func source(indent: Int) -> String {
      let indentString = String(repeating: "    ", count: indent)

      var source = "\(indentString)<"
      if let name = self.name {
        source.append("\(name)")
      }
      if ¬attributes.isEmpty {
        source.append(" \(attributes.map({ $0.source() }).joined(separator: " "))")
      }
      if children.isEmpty {
        source.append("/>")
      } else {
        source.append(">\n")

        for child in children {
          if let element = (child as? XMLElement) {
            source.append("\(element.source(indent: indent + 1))\n")
          }
        }
        source.append("\(indentString)</")
        if let name = self.name {
          source.append(name)
        }
        source.append(">")
      }
      return source
    }
  }

#endif
