/*
 Music.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2022 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

extension Symbol {

  internal static var music: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "♭", names: ["flat"])
        case .deutschDeutschland:
          return nil
        case .françaisFrance:
          return SymbolData(symbol: "♭", names: ["bémollisé"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "♭", names: ["ύφεση"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "♯", names: ["sharp"])
        case .deutschDeutschland:
          return nil
        case .françaisFrance:
          return SymbolData(symbol: "♯", names: ["diésé"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "♯", names: ["δίεση"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "♮", names: ["natural"])
        case .deutschDeutschland:
          return nil
        case .françaisFrance:
          return SymbolData(symbol: "♮", names: ["naturel"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "♮", names: ["αναίρεση"])
        }
      }),
    ]
  }
}
