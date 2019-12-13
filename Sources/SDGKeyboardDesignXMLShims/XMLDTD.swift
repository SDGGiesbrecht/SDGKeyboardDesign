/*
 XMLDTD.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 */

// #workaround(Swift 5.1.2, In the core library variant of Foundation, “init() is not yet implemented”.)
#if os(iOS) || os(watchOS) || os(tvOS) || !canImport(ObjectiveC)

  public class XMLDTD: XMLNode {

    // MARK: - Properties

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
      source.append(">\n")
      return source
    }
  }

#endif
