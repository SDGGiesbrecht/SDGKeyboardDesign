/*
 XMLNode.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht.

 Soli Deo gloria.
 */

// #workaround(Swift 5.1.3, In the core library variant of Foundation, “init() is not yet implemented”.)
#if os(iOS) || os(watchOS) || os(tvOS) || !canImport(ObjectiveC)

  import Foundation

  import SDGHTML

  public class XMLNode: NSObject {

    // MARK: - Class Methods

    public class func attribute(withName name: String, stringValue: String) -> Any {
      let node = XMLNode()
      node.name = name

      var escaped = HTML.escapeTextForAttribute(stringValue)
      escaped.scalars.replaceMatches(for: "<".scalars, with: "&#x003C;".scalars)
      escaped.scalars.replaceMatches(for: ">".scalars, with: "&#x003E;".scalars)
      node.value = escaped

      return node
    }

    // MARK: - Properties

    public var name: String?

    private var value: String?

    // MARK: - Methods

    internal func source() -> String {
      var source = ""
      if let name = self.name {
        source.append(name)
      }
      if let value = self.value {
        source.append("=\u{22}\(value)\u{22}")
      }
      return source
    }
  }

#endif
