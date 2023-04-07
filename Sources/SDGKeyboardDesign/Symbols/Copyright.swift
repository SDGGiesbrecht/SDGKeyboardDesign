/*
 Copyright.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2023 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

extension Symbol {

  internal static var copyright: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "©", names: ["copyright"])
        case .deutschDeutschland:
          return SymbolData(symbol: "©", names: ["Urheberrecht"])
        case .françaisFrance:
          return SymbolData(symbol: "©", names: ["droit d’auteur"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "©", names: ["πνευματική ιδιοκτησία"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "℗", names: ["sound recording copyright"])
        case .deutschDeutschland:
          return SymbolData(symbol: "℗", names: ["phonographische Rechte"])
        case .françaisFrance:
          return SymbolData(symbol: "℗", names: ["droit d’auteur phonographique"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "℗", names: ["πνευματική ιδιοκτησία ηχογράφησης"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "®", names: ["registered trademark"])
        case .deutschDeutschland:
          return SymbolData(symbol: "®", names: ["registrierte Marke"])
        case .françaisFrance:
          return SymbolData(symbol: "®", names: ["marque déposée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "®", names: ["καταχωρισμένο εμπορικό σήμα"])
        }
      }),
    ]
  }
}
