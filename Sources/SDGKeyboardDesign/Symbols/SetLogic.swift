/*
 SetLogic.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht.

 Soli Deo gloria.
 */

extension Symbol {

  internal static var setLogic: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∈", names: ["element"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∈", names: ["Element"])
        case .françaisFrance:
          return SymbolData(symbol: "∈", names: ["appartient"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∋", names: ["contains"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∋", names: ["enthält"])
        case .françaisFrance:
          return SymbolData(symbol: "∋", names: ["contient"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∩", names: ["intersection"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∩", names: ["Schnittmenge"])
        case .françaisFrance:
          return SymbolData(symbol: "∩", names: ["intersection"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∪", names: ["union"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∪", names: ["Vereinigungsmenge"])
        case .françaisFrance:
          return SymbolData(symbol: "∪", names: ["union"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∖", names: ["relative complement"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∖", names: ["Differenzmenge"])
        case .françaisFrance:
          return SymbolData(symbol: "∖", names: ["complémentaire relatif"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∆", names: ["symmetric difference"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∆", names: ["symmetrische Differenz"])
        case .françaisFrance:
          return SymbolData(symbol: "∆", names: ["différence symétrique"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⊆", names: ["subset"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⊆", names: ["Teilmenge"])
        case .françaisFrance:
          return SymbolData(symbol: "⊆", names: ["sous‐ensemble"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⊇", names: ["superset"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⊇", names: ["Obermenge"])
        case .françaisFrance:
          return SymbolData(symbol: "⊇", names: ["sur‐ensemble"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⊊", names: ["strict subset"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⊊", names: ["echte Teilmenge"])
        case .françaisFrance:
          return SymbolData(symbol: "⊊", names: ["sous‐ensemble propre"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⊋", names: ["strict superset"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⊋", names: ["echte Obermenge"])
        case .françaisFrance:
          return SymbolData(symbol: "⊋", names: ["sur‐ensemble propre"])
        }
      }),
    ]
  }
}
