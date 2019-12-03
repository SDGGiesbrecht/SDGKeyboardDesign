/*
 Chemistry.swift

 This source file is part of the SDGKeyboardDesign open source project.

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 */

extension Symbol {

  internal static var chemistry: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "→", names: ["yields", "yield"])
        case .deutschDeutschland:
          return SymbolData(symbol: "→", names: ["reagiert zu", "reagieren zu"])
        case .françaisFrance:
          return SymbolData(symbol: "→", names: ["donne", "donnent"])
        }
      })
    ]
  }
}
