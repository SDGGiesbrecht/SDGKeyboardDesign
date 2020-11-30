/*
 XMLDTD.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

// #workaround(Swift 5.3.1, Web lacks CFXMLInterace.)
#if os(WASI) || os(tvOS) || os(iOS) || os(watchOS)

  public final class XMLDTD: XMLNode {

    // MARK: - Properties

    public var publicID: String?
    public var systemID: String?

    // MARK: - Methods

    override internal func source() -> String {
      var source = "<!DOCTYPE "
      if let name = self.name {
        source.append(name)
      }
      if let systemID = self.systemID {
        source.append(" SYSTEM \u{22}\(systemID)\u{22}")
      }
      source.append(">")
      return source
    }
  }

#endif
