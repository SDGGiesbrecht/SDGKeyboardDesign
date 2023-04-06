/*
 Chemistry.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2023 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "→", names: ["παράγεται", "παράγονται"])
        }
      })
    ]
  }
}
