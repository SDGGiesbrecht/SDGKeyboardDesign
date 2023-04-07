/*
 Gender.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2023 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

extension Symbol {

  internal static var gender: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "♂", names: ["male"])
        case .deutschDeutschland:
          return SymbolData(symbol: "♂", names: ["Männlich"])
        case .françaisFrance:
          return SymbolData(symbol: "♂", names: ["masculin"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "♂", names: ["αρσενικός"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "♀", names: ["female"])
        case .deutschDeutschland:
          return SymbolData(symbol: "♀", names: ["Weiblich"])
        case .françaisFrance:
          return SymbolData(symbol: "♀", names: ["féminin"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "♀", names: ["θηλυκός"])
        }
      }),
    ]
  }
}
