/*
 Logic.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

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
        }
      }),
    ]
  }
}
