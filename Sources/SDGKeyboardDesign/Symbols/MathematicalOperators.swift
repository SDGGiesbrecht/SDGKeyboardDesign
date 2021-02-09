/*
 MathematicalOperators.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2021 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

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
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "+", names: ["positive"])
        case .deutschDeutschland, .françaisFrance:
          return nil
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
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "−", names: ["negative"])
        case .deutschDeutschland, .françaisFrance:
          return nil
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
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "∶", names: ["ratio"])
        case .deutschDeutschland:
          return nil
        case .françaisFrance:
          return SymbolData(symbol: "∶", names: ["rapport"])
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
        }
      }),
    ]
  }
}
