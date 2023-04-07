/*
 Numerals.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2023 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import SDGText

extension Symbol {

  private static var εκτός: [StrictString] = [
    "έκτος", "έκτη", "έκτο", "έκτοι", "έκτες", "έκτα", "έκτους", "έκτου", "έκτης", "έκτων", "έκτε",
  ]
  private static var ενενηκοστός: [StrictString] = [
    "ενενηκοστός", "ενενηκοστή", "ενενηκοστό", "ενενηκοστοί", "ενενηκοστές", "ενενηκοστά",
    "ενενηκοστούς", "ενενηκοστού", "ενενηκοστής", "ενενηκοστών", "ενενηκοστέ",
  ]
  private static var εννιακοσιοστός: [StrictString] = [
    "εννιακοσιοστός", "εννιακοσιοστή", "εννιακοσιοστό", "εννιακοσιοστοί", "εννιακοσιοστές",
    "εννιακοσιοστά", "εννιακοσιοστούς", "εννιακοσιοστού", "εννιακοσιοστής", "εννιακοσιοστών",
    "εννιακοσιοστέ",
  ]
  internal static var numerals: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .deutschDeutschland, .françaisFrance:
          return nil
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "Ϛ", names: εκτός)
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .deutschDeutschland, .françaisFrance:
          return nil
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ϛ", names: εκτός.map { $0.prepending(contentsOf: "πεζό ") })
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .deutschDeutschland, .françaisFrance:
          return nil
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "Ϟ", names: ενενηκοστός)
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .deutschDeutschland, .françaisFrance:
          return nil
        case .ελληνικάΕλλάδα:
          return SymbolData(
            symbol: "ϟ",
            names: ενενηκοστός.map { $0.prepending(contentsOf: "πεζό ") }
          )
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .deutschDeutschland, .françaisFrance:
          return nil
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "Ϡ", names: εννιακοσιοστός)
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .deutschDeutschland, .françaisFrance:
          return nil
        case .ελληνικάΕλλάδα:
          return SymbolData(
            symbol: "ϡ",
            names: εννιακοσιοστός.map { $0.prepending(contentsOf: "πεζό ") }
          )
        }
      }),
    ]
  }
}
