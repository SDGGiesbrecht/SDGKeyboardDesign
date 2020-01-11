/*
 XMLDocument.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 */

// #workaround(Swift 5.1.3, In the core library variant of Foundation, “init() is not yet implemented”.)
#if os(iOS) || os(watchOS) || os(tvOS) || !canImport(ObjectiveC)
  import Foundation

  public class XMLDocument: XMLNode {

    // MARK: - Initialization

    public init(rootElement: XMLElement?) {
      self.rootElement = rootElement
    }

    // MARK: - Properties

    public var characterEncoding: String?
    public var version: String?
    public var dtd: XMLDTD?

    private var rootElement: XMLElement?

    // MARK: - Methods

    public func xmlData(options: XMLNode.Options = []) -> Data {
      var source = "<?xml"
      if let version = self.version {
        source.append(" version=\u{22}\(version)\u{22}")
      }
      if let characterEncoding = self.characterEncoding {
        source.append(" encoding=\u{22}\(characterEncoding)\u{22}")
      }
      source.append("?>\n")
      if let dtd = self.dtd {
        source.append("\(dtd.source())\n")
      }
      if let rootElement = self.rootElement {
        source.append("\(rootElement.source(indent: 0))")
      }
      return source.data(using: .utf8)!
    }
  }

#endif
