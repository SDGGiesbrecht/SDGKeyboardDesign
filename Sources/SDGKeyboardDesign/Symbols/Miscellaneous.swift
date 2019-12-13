/*
 Miscellaneous.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 */

extension Symbol {

  internal static var miscellaneous: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "&", names: ["et", "and"])
        case .deutschDeutschland:
          return SymbolData(symbol: "u.", names: ["und"])
        case .françaisFrance:
          return nil
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "/", names: ["or"])
        case .deutschDeutschland:
          return SymbolData(symbol: "/", names: ["oder"])
        case .françaisFrance:
          return SymbolData(symbol: "/", names: ["ou"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "@", names: ["at"])
        case .deutschDeutschland:
          return nil
        case .françaisFrance:
          return nil
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "#", names: ["number"])
        case .deutschDeutschland:
          return nil
        case .françaisFrance:
          return nil
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "℞", names: ["prescription"])
        case .deutschDeutschland, .françaisFrance:
          return nil
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "☺", names: ["smile"])
        case .deutschDeutschland:
          return SymbolData(symbol: "☺", names: ["Lächeln"])
        case .françaisFrance:
          return SymbolData(symbol: "☺", names: ["sourire"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "☹", names: ["frown"])
        case .deutschDeutschland:
          return SymbolData(symbol: "☹", names: ["Trauer"])
        case .françaisFrance:
          return SymbolData(symbol: "☹", names: ["grimace"])
        }
      }),
    ]
  }
}
