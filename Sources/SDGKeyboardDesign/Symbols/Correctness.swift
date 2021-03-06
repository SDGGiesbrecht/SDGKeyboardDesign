/*
 Correctness.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2021 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

extension Symbol {

  internal static var correctness: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "✓", names: ["check"])
        case .deutschDeutschland:
          return SymbolData(symbol: "✓", names: ["Häkchen"])
        case .françaisFrance:
          return SymbolData(symbol: "✓", names: ["coche"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "✗", names: ["x"])
        case .deutschDeutschland:
          return SymbolData(symbol: "✗", names: ["Kreuzchen"])
        case .françaisFrance:
          return SymbolData(symbol: "✗", names: ["croix"])
        }
      }),
    ]
  }
}
