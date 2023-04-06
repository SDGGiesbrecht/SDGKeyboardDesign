/*
 Footnotes.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2023 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

extension Symbol {

  internal static var footnotes: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "*", names: ["asterisk"])
        case .deutschDeutschland, .françaisFrance, .ελληνικάΕλλάδα:
          return nil
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "†", names: ["dagger"])
        case .deutschDeutschland, .françaisFrance, .ελληνικάΕλλάδα:
          return nil
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "‡", names: ["double dagger"])
        case .deutschDeutschland, .françaisFrance, .ελληνικάΕλλάδα:
          return nil
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "§", names: ["section"])
        case .deutschDeutschland, .françaisFrance, .ελληνικάΕλλάδα:
          return nil
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "‖", names: ["double bar"])
        case .deutschDeutschland, .françaisFrance, .ελληνικάΕλλάδα:
          return nil
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "¶", names: ["paragraph"])
        case .deutschDeutschland, .françaisFrance, .ελληνικάΕλλάδα:
          return nil
        }
      }),
    ]
  }
}
