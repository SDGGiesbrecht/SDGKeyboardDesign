/*
 Miscellaneous.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2022 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ϗ", names: ["και"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "&", names: ["Et", "And"])
        case .deutschDeutschland:
          return nil
        case .françaisFrance:
          return nil
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "Ϗ", names: ["Και"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "/", names: ["ή"])
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
        case .ελληνικάΕλλάδα:
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʹ", names: ["αριθμός"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada,
          .deutschDeutschland, .françaisFrance:
          return nil
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "͵", names: ["χίλια", "χιλιάδες"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "℞", names: ["prescription"])
        case .deutschDeutschland, .françaisFrance, .ελληνικάΕλλάδα:
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "☺", names: ["χαμόγελο"])
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
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "☹", names: ["συνοφρύωση"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "◌", names: ["placeholder"])
        case .deutschDeutschland:
          return SymbolData(symbol: "◌", names: ["Platzhalter"])
        case .françaisFrance:
          return SymbolData(symbol: "◌", names: ["marque substitutive"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "◌", names: ["κράτησης θέσης"])
        }
      }),
    ]
  }
}
