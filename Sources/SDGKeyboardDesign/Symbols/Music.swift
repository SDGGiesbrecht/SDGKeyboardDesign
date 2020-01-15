/*
 Music.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

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
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "♯", names: ["sharp"])
        case .deutschDeutschland:
          return nil
        case .françaisFrance:
          return SymbolData(symbol: "♭", names: ["diésé"])
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
        }
      })
    ]
  }
}
