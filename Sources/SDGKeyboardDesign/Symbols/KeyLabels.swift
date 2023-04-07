/*
 KeyLabels.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2023 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

extension Symbol {

  internal static var keyLabels: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⎋", names: ["escape"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⎋", names: ["Escape"])
        case .françaisFrance:
          return SymbolData(symbol: "⎋", names: ["échappement"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "⎋", names: ["διαφυγή"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⌫", names: ["delete"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⌫", names: ["Rücktaste"])
        case .françaisFrance:
          return SymbolData(symbol: "⌫", names: ["retour arrière"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "⌫", names: ["πίσω χώρου"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⇤", names: ["tab left"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⇤", names: ["Tabulator links"])
        case .françaisFrance:
          return SymbolData(symbol: "⇤", names: ["tabulation gauche"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "⇤", names: ["στυλοθέτηση αριστερά"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⇥", names: ["tab right"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⇤", names: ["Tabulator rechts"])
        case .françaisFrance:
          return SymbolData(symbol: "⇤", names: ["tabulation droite"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "⇤", names: ["στυλοθέτηση δεξιά"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⇪", names: ["caps lock"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⇪", names: ["Feststelltaste"])
        case .françaisFrance:
          return SymbolData(symbol: "⇪", names: ["verrouillage des majuscules"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "⇪", names: ["κλείδωμα κεφαλαίων"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⏎", names: ["return"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⏎", names: ["Rückführtaste"])
        case .françaisFrance:
          return SymbolData(symbol: "⏎", names: ["retour"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "⏎", names: ["επιστροφή"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⇧", names: ["shift"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⇧", names: ["Umschalttaste"])
        case .françaisFrance:
          return SymbolData(symbol: "⇧", names: ["majuscule"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "⇧", names: ["μετάθεση"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⌃", names: ["control"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⌃", names: ["Steuerungstaste"])
        case .françaisFrance:
          return SymbolData(symbol: "⌃", names: ["contrôle"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "⌃", names: ["έλεγχος"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⌥", names: ["option"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⌥", names: ["Wahltaste"])
        case .françaisFrance:
          return SymbolData(symbol: "⌥", names: ["option"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "⌥", names: ["εναλλαγή"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⌘", names: ["command"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⌘", names: ["Befehlstaste"])
        case .françaisFrance:
          return SymbolData(symbol: "⌘", names: ["commande"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "⌘", names: ["εντολή"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⌦", names: ["forward delete"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⌦", names: ["Entfernen"])
        case .françaisFrance:
          return SymbolData(symbol: "⌦", names: ["suppression"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "⌫", names: ["διαγραφή"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⇞", names: ["page up"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⇞", names: ["Bild auf"])
        case .françaisFrance:
          return SymbolData(symbol: "⇞", names: ["page précédente"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "⇞", names: ["παραπάνω οθόνη"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⇟", names: ["page down"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⇟", names: ["Bild ab"])
        case .françaisFrance:
          return SymbolData(symbol: "⇟", names: ["page suivante"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "⇟", names: ["παρακάτω οθόνη"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⌧", names: ["clear"])
        case .deutschDeutschland, .françaisFrance, .ελληνικάΕλλάδα:
          return nil
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⌤", names: ["enter"])
        case .deutschDeutschland:
          return SymbolData(symbol: "⌤", names: ["Eingabe"])
        case .françaisFrance:
          return SymbolData(symbol: "⌤", names: ["entrée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "⌤", names: ["εισαγωγή"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⏏", names: ["eject"])
        case .deutschDeutschland, .françaisFrance, .ελληνικάΕλλάδα:
          return nil
        }
      }),
    ]
  }
}
