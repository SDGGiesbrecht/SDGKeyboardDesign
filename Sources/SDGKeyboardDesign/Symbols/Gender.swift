/*
 Gender.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 */

extension Symbol {

  internal static var gender: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "♂", names: ["male"])
        case .deutschDeutschland:
          return SymbolData(symbol: "♂", names: ["Männlich"])
        case .françaisFrance:
          return SymbolData(symbol: "♂", names: ["masculin"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "♀", names: ["female"])
        case .deutschDeutschland:
          return SymbolData(symbol: "♀", names: ["Weiblich"])
        case .françaisFrance:
          return SymbolData(symbol: "♀", names: ["féminin"])
        }
      })
    ]
  }
}
