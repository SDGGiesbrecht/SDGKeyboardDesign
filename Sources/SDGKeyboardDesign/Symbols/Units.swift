/*
 Units.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2022 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

extension Symbol {

  internal static var units: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishCanada:
          return SymbolData(symbol: "m", names: ["metre", "meters"])
        case .englishUnitedStates:
          return SymbolData(symbol: "m", names: ["meter", "meters"])
        case .deutschDeutschland:
          return SymbolData(symbol: "m", names: ["Meter"])
        case .françaisFrance:
          return SymbolData(symbol: "m", names: ["mètre", "mètres"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom,
          .françaisFrance:
          return SymbolData(symbol: "g", names: ["gramme", "grammes"])
        case .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "g", names: ["gram", "grams"])
        case .deutschDeutschland:
          return SymbolData(symbol: "g", names: ["Gramm"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "s", names: ["second", "seconds"])
        case .deutschDeutschland:
          return SymbolData(symbol: "s", names: ["Sekunde"])
        case .françaisFrance:
          return SymbolData(symbol: "s", names: ["seconde", "secondes"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "A", names: ["ampere", "amperes"])
        case .deutschDeutschland:
          return SymbolData(symbol: "A", names: ["Ampere"])
        case .françaisFrance:
          return SymbolData(symbol: "A", names: ["ampère", "ampères"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "K", names: ["kelvin", "kelvins"])
        case .deutschDeutschland:
          return SymbolData(symbol: "K", names: ["Kelvin"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "mol", names: ["mole", "moles"])
        case .deutschDeutschland:
          return SymbolData(symbol: "mol", names: ["Mol"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "cd", names: ["candela", "candelas"])
        case .deutschDeutschland:
          return SymbolData(symbol: "cd", names: ["Candela"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "da", names: ["deca"])
        case .deutschDeutschland:
          return SymbolData(symbol: "da", names: ["Deka"])
        case .françaisFrance:
          return SymbolData(symbol: "da", names: ["déca"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "h", names: ["hecto"])
        case .deutschDeutschland:
          return SymbolData(symbol: "h", names: ["Hekto"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "k", names: ["kilo"])
        case .deutschDeutschland:
          return SymbolData(symbol: "h", names: ["Kilo"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "M", names: ["mega"])
        case .deutschDeutschland:
          return SymbolData(symbol: "M", names: ["Mega"])
        case .françaisFrance:
          return SymbolData(symbol: "M", names: ["méga"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "G", names: ["giga"])
        case .deutschDeutschland:
          return SymbolData(symbol: "G", names: ["Giga"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "T", names: ["tera"])
        case .deutschDeutschland:
          return SymbolData(symbol: "T", names: ["Tera"])
        case .françaisFrance:
          return SymbolData(symbol: "T", names: ["téra"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "P", names: ["peta"])
        case .deutschDeutschland:
          return SymbolData(symbol: "P", names: ["Peta"])
        case .françaisFrance:
          return SymbolData(symbol: "P", names: ["péta"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "E", names: ["exa"])
        case .deutschDeutschland:
          return SymbolData(symbol: "E", names: ["Exa"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "Z", names: ["zetta"])
        case .deutschDeutschland:
          return SymbolData(symbol: "Z", names: ["Zetta"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "Y", names: ["yotta"])
        case .deutschDeutschland:
          return SymbolData(symbol: "Y", names: ["Yotta"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "d", names: ["deci"])
        case .deutschDeutschland:
          return SymbolData(symbol: "d", names: ["Dezi"])
        case .françaisFrance:
          return SymbolData(symbol: "d", names: ["déci"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "c", names: ["centi"])
        case .deutschDeutschland:
          return SymbolData(symbol: "c", names: ["Zenti"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "m", names: ["milli"])
        case .deutschDeutschland:
          return SymbolData(symbol: "m", names: ["Milli"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "μ", names: ["micro"])
        case .deutschDeutschland:
          return SymbolData(symbol: "μ", names: ["Mikro"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "n", names: ["nano"])
        case .deutschDeutschland:
          return SymbolData(symbol: "n", names: ["Nano"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "p", names: ["pico"])
        case .deutschDeutschland:
          return SymbolData(symbol: "p", names: ["Piko"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "f", names: ["femto"])
        case .deutschDeutschland:
          return SymbolData(symbol: "f", names: ["Femto"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "a", names: ["atto"])
        case .deutschDeutschland:
          return SymbolData(symbol: "a", names: ["Atto"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "z", names: ["zepto"])
        case .deutschDeutschland:
          return SymbolData(symbol: "z", names: ["Zepto"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "y", names: ["yocto"])
        case .deutschDeutschland:
          return SymbolData(symbol: "y", names: ["Yokto"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "%", names: ["percent"])
        case .deutschDeutschland:
          return SymbolData(symbol: "%", names: ["Prozent"])
        case .françaisFrance:
          return SymbolData(symbol: "%", names: ["pour cent"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "‰", names: ["per mille"])
        case .deutschDeutschland:
          return SymbolData(symbol: "‰", names: ["Promille"])
        case .françaisFrance:
          return SymbolData(symbol: "‰", names: ["pour mille"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "°", names: ["degree", "degrees"])
        case .deutschDeutschland:
          return SymbolData(symbol: "°", names: ["Grad"])
        case .françaisFrance:
          return SymbolData(symbol: "°", names: ["degré", "degrés"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "′", names: ["minute", "minutes"])
        case .deutschDeutschland:
          return SymbolData(symbol: "′", names: ["Minute"])
        }
      }),
    ]
  }
}
