/*
 MathematicalRelations.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
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
        }
      }),
    ]
  }
}
