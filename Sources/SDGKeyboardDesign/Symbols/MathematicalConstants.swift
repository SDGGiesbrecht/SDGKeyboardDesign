/*
 MathematicalConstants.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2023 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∞", names: ["άπειρο"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∅", names: ["κενό σύνολο"])
        }
      }),
    ]
  }
}
