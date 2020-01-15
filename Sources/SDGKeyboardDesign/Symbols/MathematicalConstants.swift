/*
 MathematicalConstants.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht.

 Soli Deo gloria.
 */

extension Symbol {

  internal static var mathematicalConstants: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∞", names: ["infinity"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∞", names: ["unendlich"])
        case .françaisFrance:
          return SymbolData(symbol: "∞", names: ["infini"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∅", names: ["empty set"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∅", names: ["leere Menge"])
        case .françaisFrance:
          return SymbolData(symbol: "∅", names: ["ensemble vide"])
        }
      })
    ]
  }
}
