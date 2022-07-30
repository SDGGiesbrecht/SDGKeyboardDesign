/*
 MathematicalOperators.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2022 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

extension Symbol {

  internal static var mathematicalOperators: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "+", names: ["plus"])
        case .deutschDeutschland:
          return SymbolData(symbol: "+", names: ["plus"])
        case .françaisFrance:
          return SymbolData(symbol: "+", names: ["plus"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "+", names: ["plus"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "+", names: ["positive"])
        case .deutschDeutschland, .françaisFrance:
          return nil
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "+", names: ["θετικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "±", names: ["plus or minus"])
        case .deutschDeutschland:
          return SymbolData(symbol: "±", names: ["plus oder minus"])
        case .françaisFrance:
          return SymbolData(symbol: "±", names: ["plus ou moins"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "±", names: ["συν ή μείον"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "−", names: ["minus"])
        case .deutschDeutschland:
          return SymbolData(symbol: "−", names: ["minus"])
        case .françaisFrance:
          return SymbolData(symbol: "−", names: ["moins"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "−", names: ["μείον"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "−", names: ["negative"])
        case .deutschDeutschland, .françaisFrance:
          return nil
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "−", names: ["αρνητικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∓", names: ["minus or plus"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∓", names: ["minus oder plus"])
        case .françaisFrance:
          return SymbolData(symbol: "∓", names: ["moins ou plus"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∓", names: ["μείον ή συν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "×", names: ["times"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⋅", names: ["mal"])
        case .françaisFrance:
          return SymbolData(symbol: "⋅", names: ["fois"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "×", names: ["επί", "φορές"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "÷", names: ["divided by"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∶", names: ["durch"])
        case .françaisFrance:
          return SymbolData(symbol: "∶", names: ["divisé par"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "÷", names: ["δια"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∶", names: ["ratio"])  // → to (range, –)
        case .deutschDeutschland:
          return SymbolData(symbol: "∶", names: ["zu"])
        case .françaisFrance:
          return SymbolData(symbol: "∶", names: ["rapport"])  // → à (intervalle, –)
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∶", names: ["προς"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⁄", names: ["fraction"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⁄", names: ["Bruch"])
        case .françaisFrance:
          return SymbolData(symbol: "⁄", names: ["fraction"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "⁄", names: ["κλάσμα"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "√", names: ["root"])
        case .deutschDeutschland:
          return SymbolData(symbol: "√", names: ["Wurzel"])
        case .françaisFrance:
          return SymbolData(symbol: "√", names: ["racine"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "√", names: ["ρίζα"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∑", names: ["sum"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∑", names: ["Summe"])
        case .françaisFrance:
          return SymbolData(symbol: "∑", names: ["somme"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∑", names: ["άθροισμα"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∏", names: ["product"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∏", names: ["Produkt"])
        case .françaisFrance:
          return SymbolData(symbol: "∏", names: ["produit"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∏", names: ["γινόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "′", names: ["prime"])
        case .deutschDeutschland:
          return SymbolData(symbol: "′", names: ["Ableitung"])
        case .françaisFrance:
          return SymbolData(symbol: "′", names: ["prime"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "′", names: ["παράγωγος"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∫", names: ["integral"])
        case .deutschDeutschland:
          return SymbolData(symbol: "∫", names: ["Integral"])
        case .françaisFrance:
          return SymbolData(symbol: "∫", names: ["intégrale"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "∫", names: ["ολοκλήρωμα"])
        }
      }),
    ]
  }
}
