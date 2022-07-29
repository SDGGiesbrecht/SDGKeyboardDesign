/*
 CardSuits.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2022 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "♡", names: ["κούπες"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "♠", names: ["μπαστούνια"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "♢", names: ["καρό"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "♣", names: ["σπαθιά"])
        }
      }),
    ]
  }
}
