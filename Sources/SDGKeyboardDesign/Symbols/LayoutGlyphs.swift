/*
 LayoutGlyphs.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 */

extension Symbol {

  internal static var layoutGlyphs: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "•", names: ["bullet"])
        case .deutschDeutschland:
          return SymbolData(symbol: "•", names: ["Aufzählungszeichen"])
        case .françaisFrance:
          return SymbolData(symbol: "•", names: ["puce"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⁂", names: ["asterism"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⁂", names: ["Asterism"])
        case .françaisFrance:
          return SymbolData(symbol: "⁂", names: ["astérisme"])
        }
      })
    ]
  }
}
