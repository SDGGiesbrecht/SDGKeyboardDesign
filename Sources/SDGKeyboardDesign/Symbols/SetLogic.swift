/*
 SetLogic.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2022 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∈", names: ["ανήκει"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∋", names: ["περιέχει"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∩", names: ["τομή"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∪", names: ["ένωση"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∖", names: ["σχετικό συμπλήρωμα"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∆", names: ["συμμετρική διαφορά"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "⊆", names: ["υποσύνολο"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "⊇", names: ["υπερσύνολο"])
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
        case .françaisFrance:
          return SymbolData(symbol: "⊊", names: ["γνήσιο υποσύνολο"])
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
        case .françaisFrance:
          return SymbolData(symbol: "⊊", names: ["γνήσιο υπερσύνολο"])
        }
      }),
    ]
  }
}
