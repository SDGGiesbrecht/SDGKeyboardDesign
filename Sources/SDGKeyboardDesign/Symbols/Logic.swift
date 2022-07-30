/*
 Logic.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2022 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

extension Symbol {

  internal static var logic: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "¬", names: ["not"])
        case .deutschDeutschland:
          return SymbolData(symbol: "¬", names: ["nicht"])
        case .françaisFrance:
          return SymbolData(symbol: "¬", names: ["non"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "¬", names: ["όχι"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∧", names: ["conjunction"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∧", names: ["Konjunktion"])
        case .françaisFrance:
          return SymbolData(symbol: "∧", names: ["conjonction"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∧", names: ["λογική σύζευξη"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∨", names: ["disjunction"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∨", names: ["Disjunktion"])
        case .françaisFrance:
          return SymbolData(symbol: "∨", names: ["disjonction"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∨", names: ["διάζευξη"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∴", names: ["therefore"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∴", names: ["folglich"])
        case .françaisFrance:
          return SymbolData(symbol: "∴", names: ["par conséquent"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∴", names: ["επομένως"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∵", names: ["because"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∵", names: ["weil"])
        case .françaisFrance:
          return SymbolData(symbol: "∵", names: ["parce que"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∵", names: ["επειδή"])
        }
      }),
    ]
  }
}
