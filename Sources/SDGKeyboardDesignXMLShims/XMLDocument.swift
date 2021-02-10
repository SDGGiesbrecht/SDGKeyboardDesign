/*
 XMLDocument.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2021 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

// #workaround(Swift 5.3.1, Web lacks CFXMLInterace.)
#if os(WASI) || os(tvOS) || os(iOS) || os(watchOS)
  import Foundation

  public final class XMLDocument: XMLNode {

    // MARK: - Initialization

    public init(rootElement: XMLElement?) {
      self.rootElement = rootElement
    }

    // MARK: - Properties

    public var characterEncoding: String?
    public var version: String?
    public var isStandalone: Bool = false
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
        source.append("\(rootElement.source(indent: 0))\n")
      }
      return source.data(using: .utf8)!
    }
  }

#endif
