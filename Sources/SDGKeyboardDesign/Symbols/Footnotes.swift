/*
 Footnotes.swift

 This source file is part of the SDGKeyboardDesign open source project.

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 */

extension Symbol {

  internal static var footnotes: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "*", names: ["asterisk"])
        case .deutschDeutschland, .françaisFrance:
          return nil
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "†", names: ["dagger"])
        case .deutschDeutschland, .françaisFrance:
          return nil
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "‡", names: ["double dagger"])
        case .deutschDeutschland, .françaisFrance:
          return nil
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "§", names: ["section"])
        case .deutschDeutschland, .françaisFrance:
          return nil
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "‖", names: ["double bar"])
        case .deutschDeutschland, .françaisFrance:
          return nil
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "¶", names: ["paragraph"])
        case .deutschDeutschland, .françaisFrance:
          return nil
        }
      }),
    ]
  }
}
