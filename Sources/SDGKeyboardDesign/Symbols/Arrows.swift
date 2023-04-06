/*
 Arrows.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2023 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

extension Symbol {

  internal static var arrows: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "→", names: ["right"])
        case .deutschDeutschland:
          return SymbolData(symbol: "→", names: ["rechts"])
        case .françaisFrance:
          return SymbolData(symbol: "→", names: ["droit"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "→", names: ["δεξιά"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "↑", names: ["up"])
        case .deutschDeutschland:
          return SymbolData(symbol: "↑", names: ["oben"])
        case .françaisFrance:
          return SymbolData(symbol: "↑", names: ["haut"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "↑", names: ["πάνω"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "←", names: ["left"])
        case .deutschDeutschland:
          return SymbolData(symbol: "←", names: ["links"])
        case .françaisFrance:
          return SymbolData(symbol: "←", names: ["gauche"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "←", names: ["αριστερά"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "↓", names: ["down"])
        case .deutschDeutschland:
          return SymbolData(symbol: "↓", names: ["unten"])
        case .françaisFrance:
          return SymbolData(symbol: "↓", names: ["bas"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "↓", names: ["κάτω"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "→", names: ["east"])
        case .deutschDeutschland:
          return SymbolData(symbol: "→", names: ["Osten"])
        case .françaisFrance:
          return SymbolData(symbol: "→", names: ["est"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "→", names: ["ανατολικά"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "↗", names: ["northeast"])
        case .deutschDeutschland:
          return SymbolData(symbol: "↗", names: ["Nordosten"])
        case .françaisFrance:
          return SymbolData(symbol: "↗", names: ["nord‐est"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "↗", names: ["βορειοανατολικά"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "↑", names: ["north"])
        case .deutschDeutschland:
          return SymbolData(symbol: "↑", names: ["Norden"])
        case .françaisFrance:
          return SymbolData(symbol: "↑", names: ["nord"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "↑", names: ["βόρεια"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "↖", names: ["northwest"])
        case .deutschDeutschland:
          return SymbolData(symbol: "↖", names: ["Nordwesten"])
        case .françaisFrance:
          return SymbolData(symbol: "↖", names: ["nord‐ouest"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "↖", names: ["βορειοδυτικά"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "←", names: ["west"])
        case .deutschDeutschland:
          return SymbolData(symbol: "←", names: ["Westen"])
        case .françaisFrance:
          return SymbolData(symbol: "←", names: ["ouest"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "←", names: ["δυτικά"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "↙", names: ["southwest"])
        case .deutschDeutschland:
          return SymbolData(symbol: "↙", names: ["Südwesten"])
        case .françaisFrance:
          return SymbolData(symbol: "↙", names: ["sud‐ouest"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "↙", names: ["νοτιοδυτικά"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "↓", names: ["south"])
        case .deutschDeutschland:
          return SymbolData(symbol: "↓", names: ["Süden"])
        case .françaisFrance:
          return SymbolData(symbol: "↓", names: ["sud"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "↓", names: ["νότια"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "↘", names: ["southeast"])
        case .deutschDeutschland:
          return SymbolData(symbol: "↘", names: ["Südosten"])
        case .françaisFrance:
          return SymbolData(symbol: "↘", names: ["sud‐est"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "↘", names: ["νοτιοανατολικά"])
        }
      }),
    ]
  }
}
