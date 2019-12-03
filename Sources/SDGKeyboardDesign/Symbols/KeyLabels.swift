/*
 KeyLabels.swift

 This source file is part of the SDGKeyboardDesign open source project.

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
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
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⌧", names: ["clear"])
        case .deutschDeutschland, .françaisFrance:
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
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "⏏", names: ["eject"])
        case .deutschDeutschland, .françaisFrance:
          return nil
        }
      }),
    ]
  }
}
