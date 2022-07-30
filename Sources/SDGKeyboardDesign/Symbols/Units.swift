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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "m", names: ["μέτρο", "μέτρα"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "g", names: ["γραμμάριο", "γραμμάρια"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "s", names: ["δευτερόλεπτο", "δευτερόλεπτα"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "A", names: ["αμπέρ"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "K", names: ["kelvin", "kelvins"])
        case .deutschDeutschland:
          return SymbolData(symbol: "K", names: ["Kelvin"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "K", names: ["κέλβιν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "mol", names: ["mole", "moles"])
        case .deutschDeutschland:
          return SymbolData(symbol: "mol", names: ["Mol"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "mol", names: ["γραμμομόριο", "γραμμομόρια"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "cd", names: ["candela", "candelas"])
        case .deutschDeutschland:
          return SymbolData(symbol: "cd", names: ["Candela"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "cd", names: ["κηρίο", "κηρία"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "da", names: ["δεκα"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "h", names: ["hecto"])
        case .deutschDeutschland:
          return SymbolData(symbol: "h", names: ["Hekto"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "h", names: ["εκατο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "k", names: ["kilo"])
        case .deutschDeutschland:
          return SymbolData(symbol: "h", names: ["Kilo"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "h", names: ["χιλιο"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "M", names: ["μεγα"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "G", names: ["giga"])
        case .deutschDeutschland:
          return SymbolData(symbol: "G", names: ["Giga"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "G", names: ["γιγα"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "T", names: ["τερα"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "P", names: ["πετα"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "E", names: ["exa"])
        case .deutschDeutschland:
          return SymbolData(symbol: "E", names: ["Exa"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "E", names: ["εξα"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "Z", names: ["zetta"])
        case .deutschDeutschland:
          return SymbolData(symbol: "Z", names: ["Zetta"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "Z", names: ["ζεττα"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "Y", names: ["yotta"])
        case .deutschDeutschland:
          return SymbolData(symbol: "Y", names: ["Yotta"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "Y", names: ["γιοττα"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "d", names: ["δεκατο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "c", names: ["centi"])
        case .deutschDeutschland:
          return SymbolData(symbol: "c", names: ["Zenti"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "c", names: ["εκατοστο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "m", names: ["milli"])
        case .deutschDeutschland:
          return SymbolData(symbol: "m", names: ["Milli"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "m", names: ["χιλιοστο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "μ", names: ["micro"])
        case .deutschDeutschland:
          return SymbolData(symbol: "μ", names: ["Mikro"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "μ", names: ["μικρο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "n", names: ["nano"])
        case .deutschDeutschland:
          return SymbolData(symbol: "n", names: ["Nano"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "n", names: ["νανο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "p", names: ["pico"])
        case .deutschDeutschland:
          return SymbolData(symbol: "p", names: ["Piko"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "p", names: ["πικο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "f", names: ["femto"])
        case .deutschDeutschland:
          return SymbolData(symbol: "f", names: ["Femto"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "f", names: ["φεμτο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "a", names: ["atto"])
        case .deutschDeutschland:
          return SymbolData(symbol: "a", names: ["Atto"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "a", names: ["αττο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "z", names: ["zepto"])
        case .deutschDeutschland:
          return SymbolData(symbol: "z", names: ["Zepto"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "z", names: ["ζεπτο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "y", names: ["yocto"])
        case .deutschDeutschland:
          return SymbolData(symbol: "y", names: ["Yokto"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "y", names: ["γιοκτο"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "%", names: ["τοις εκατό"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "‰", names: ["τοις χιλίοις"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "°", names: ["μοίρα", "μοίρες"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .françaisFrance:
          return SymbolData(symbol: "′", names: ["minute", "minutes"])
        case .deutschDeutschland:
          return SymbolData(symbol: "′", names: ["Minute"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "′", names: ["λεπτό", "λεπτά"])
        }
      }),
    ]
  }
}
