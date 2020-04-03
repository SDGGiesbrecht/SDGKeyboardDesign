/*
 LayoutGlyphs.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
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
      }),
    ]
  }
}
