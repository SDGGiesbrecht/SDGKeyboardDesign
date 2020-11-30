/*
 XMLElement.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

// #workaround(Swift 5.3.1, Web lacks CFXMLInterace.)
#if os(WASI) || os(tvOS) || os(iOS) || os(watchOS)
  import SDGLogic

  public final class XMLElement: XMLNode {

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
      let indentString = String(repeating: "  ", count: indent)

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
