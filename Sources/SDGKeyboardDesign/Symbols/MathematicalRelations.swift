/*
 MathematicalRelations.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2022 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

extension Symbol {

  internal static var mathematicalRelations: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "=", names: ["equals"])
        case .deutschDeutschland:
          return SymbolData(symbol: "=", names: ["gleich"])
        case .françaisFrance:
          return SymbolData(symbol: "=", names: ["égal"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "=", names: ["ίσον"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "≈", names: ["approximately equal"])
        case .deutschDeutschland:
          return SymbolData(symbol: "≈", names: ["ungefähr gleich"])
        case .françaisFrance:
          return SymbolData(symbol: "≈", names: ["presque égal"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "≈", names: ["περίπου ίσον"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "<", names: ["less than"])
        case .deutschDeutschland:
          return SymbolData(symbol: "<", names: ["kleiner als"])
        case .françaisFrance:
          return SymbolData(symbol: "<", names: ["inférieur"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "<", names: ["μικρότερο από"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "≤", names: ["less than or equal"])
        case .deutschDeutschland:
          return SymbolData(symbol: "≤", names: ["kleiner als oder gleich"])
        case .françaisFrance:
          return SymbolData(symbol: "≤", names: ["inférieur ou égal"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "≤", names: ["μικρότερο ή ίσον"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: ">", names: ["greater than"])
        case .deutschDeutschland:
          return SymbolData(symbol: ">", names: ["größer als"])
        case .françaisFrance:
          return SymbolData(symbol: ">", names: ["supérieur"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: ">", names: ["μεγαλύρερο από"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "≥", names: ["greater than or equal"])
        case .deutschDeutschland:
          return SymbolData(symbol: "≥", names: ["größer als oder gleich"])
        case .françaisFrance:
          return SymbolData(symbol: "≥", names: ["supérieur ou égal"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "≥", names: ["μεγαλύτερο ή ίσον"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∝", names: ["proportionally"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∝", names: ["proportional"])
        case .françaisFrance:
          return SymbolData(symbol: "∝", names: ["proportionellement"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∝", names: ["αναλογικά"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̸", names: ["crossed out"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̸", names: ["ausgestrichen"])
        case .françaisFrance:
          return SymbolData(symbol: "̸", names: ["barré", "barrée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̸", names: ["διαγραμμένος"])
        }
      }),
    ]
  }
}
