/*
 CardSuits.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht.

 Soli Deo gloria.
 */

extension Symbol {

  internal static var cardSuits: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "♡", names: ["hearts"])
        case .deutschDeutschland:
          return SymbolData(symbol: "♡", names: ["Herz"])
        case .françaisFrance:
          return SymbolData(symbol: "♡", names: ["cœurs"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "♠", names: ["spades"])
        case .deutschDeutschland:
          return SymbolData(symbol: "♠", names: ["Pik"])
        case .françaisFrance:
          return SymbolData(symbol: "♠", names: ["piques"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "♢", names: ["diamonds"])
        case .deutschDeutschland:
          return SymbolData(symbol: "♢", names: ["Karo"])
        case .françaisFrance:
          return SymbolData(symbol: "♢", names: ["carreaux"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "♣", names: ["clubs"])
        case .deutschDeutschland:
          return SymbolData(symbol: "♣", names: ["Kreuz"])
        case .françaisFrance:
          return SymbolData(symbol: "♣", names: ["trèfles"])
        }
      }),
    ]
  }
}
