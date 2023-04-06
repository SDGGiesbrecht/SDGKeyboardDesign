/*
 Phonetics.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2023 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

extension Symbol {

  internal static var phonetics: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "p", names: ["voiceless bilabial plosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "p", names: ["stimmloser bilabialer Plosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "p", names: ["occlusive bilabiale sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "p", names: ["άηχο διχειλικό έκκροτο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "b", names: ["voiced bilabial plosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "b", names: ["stimmhafter bilabialer Plosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "b", names: ["occlusive bilabiale voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "b", names: ["ηχηρό διχειλικό έκκροτο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "m", names: ["bilabial nasal"])
        case .deutschDeutschland:
          return SymbolData(symbol: "m", names: ["bilabialer Nasal"])
        case .françaisFrance:
          return SymbolData(symbol: "m", names: ["nasal bilabiale"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "m", names: ["διχειλικό ρινικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʙ", names: ["bilabial trill"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʙ", names: ["bilabialer Vibrant"])
        case .françaisFrance:
          return SymbolData(symbol: "ʙ", names: ["roulée bilabiale"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʙ", names: ["διχειλικό παλλόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɸ", names: ["voiceless bilabial fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɸ", names: ["stimmloser bilabialer Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ɸ", names: ["fricative bilabiale sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɸ", names: ["άηχο διχειλικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "β", names: ["voiced bilabial fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "β", names: ["stimmhafter bilabialer Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "β", names: ["fricative bilabiale voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "β", names: ["ηχηρό διχειλικό τριβόμενο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɱ", names: ["labiodental nasal"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɱ", names: ["labiodentaler Nasal"])
        case .françaisFrance:
          return SymbolData(symbol: "ɱ", names: ["nasale labio‐dentale"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɱ", names: ["χειλοδοντικό ρινικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ⱱ", names: ["labiodental flap"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ⱱ", names: ["labiodentaler Flap"])
        case .françaisFrance:
          return SymbolData(symbol: "ⱱ", names: ["battue labio‐dentale"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ⱱ", names: ["χειλοδοντικό πεταχτό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "f", names: ["voiceless labiodental fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "f", names: ["stimmloser labiodentaler Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "f", names: ["fricative labio‐dentale sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "f", names: ["άηχο χειλοδοντικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "v", names: ["voiced labiodental fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "v", names: ["stimmhafter labiodentaler Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "v", names: ["fricative labio‐dentale voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "v", names: ["ηχηρό χειλοδοντικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʋ", names: ["labiodental approxomant"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʋ", names: ["labiodentaler Approximant"])
        case .françaisFrance:
          return SymbolData(symbol: "ʋ", names: ["spirante labio‐dentale"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʋ", names: ["χειλοδοντικό προσεγγιστικό"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "t", names: ["voiceless alveolar plosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "t", names: ["stimmloser alveolarer Plosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "t", names: ["occlusive alvéolaire sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "t", names: ["άηχο φατνιακό έκκροτο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "d", names: ["voiced alveolar plosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "d", names: ["stimmhafter alveolarer Plosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "d", names: ["occlusive alvéolaire voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "d", names: ["ηχηρό φατνιακό έκκροτο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "n", names: ["alveolar nasal"])
        case .deutschDeutschland:
          return SymbolData(symbol: "n", names: ["alveolarer Nasal"])
        case .françaisFrance:
          return SymbolData(symbol: "n", names: ["nasale alvéolaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "n", names: ["φατνιακό ρινικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "r", names: ["alveolar trill"])
        case .deutschDeutschland:
          return SymbolData(symbol: "r", names: ["alveolarer Vibrant"])
        case .françaisFrance:
          return SymbolData(symbol: "r", names: ["roulée alvéolaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "r", names: ["φατνιακό παλλόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɾ", names: ["alveolar tap"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɾ", names: ["alveolarer Tap"])
        case .françaisFrance:
          return SymbolData(symbol: "ɾ", names: ["battue alvéolaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɾ", names: ["φατνιακό χτυπητό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "θ", names: ["voiceless dental fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "θ", names: ["stimmloser dentaler Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "θ", names: ["fricative dentale sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "θ", names: ["άηχο οδοντικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ð", names: ["voiced dental fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ð", names: ["stimmhafter dentaler Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ð", names: ["fricative dentale voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ð", names: ["ηχηρό οδοντικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "s", names: ["voiceless alveolar fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "s", names: ["stimmloser alveolarer Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "s", names: ["fricative alvéolaire sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "s", names: ["άηχο φατνιακό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "z", names: ["voiced alveolar fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "z", names: ["stimmhafter alveolarer Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "z", names: ["fricative alvéolaire voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "z", names: ["ηχηρό φατνιακό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʃ", names: ["voiceless postalveolar fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʃ", names: ["stimmloser postalveolarer Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ʃ", names: ["fricative palato‐alvéolaire sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʃ", names: ["άηχο μεταφατνιακό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʒ", names: ["voiced postalveolar fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʒ", names: ["stimmhafter postalveolarer Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ʒ", names: ["fricative palato‐alveolaire voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʒ", names: ["ηχηρό μεταφατνιακό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɬ", names: ["voiceless lateral fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɬ", names: ["stimmloser lateraler Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ɬ", names: ["fricative latérale sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɬ", names: ["άηχο πλευρικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɮ", names: ["voiced lateral fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɮ", names: ["stimmhafter lateraler Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ɮ", names: ["fricative latérale voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɮ", names: ["ηχηρό πλευρικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɹ", names: ["alveolar approximant"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɹ", names: ["alveolarer Approximant"])
        case .françaisFrance:
          return SymbolData(symbol: "ɹ", names: ["spirante alvéolaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɹ", names: ["φατνιακό προσεγγιστικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "l", names: ["lateral alveolar approximant"])
        case .deutschDeutschland:
          return SymbolData(symbol: "l", names: ["lateraler alveolarer Approximant"])
        case .françaisFrance:
          return SymbolData(symbol: "l", names: ["spirante latérale alvéolaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "l", names: ["πλευρικό φατνιακό προσεγγιστικό"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʈ", names: ["voiceless retroflex plosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʈ", names: ["stimmloser retroflexer Plosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "ʈ", names: ["occlusive rétroflexe sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʈ", names: ["άηχο ανακεκαμμένο έκκροτο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɖ", names: ["voiced retroflex plosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɖ", names: ["stimmhafter retroflexer Plosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "ɖ", names: ["occlusive rétroflexe voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɖ", names: ["ηχηρό ανακεκαμμένο έκκροτο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɳ", names: ["retroflex nasal"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɳ", names: ["retroflexer Nasal"])
        case .françaisFrance:
          return SymbolData(symbol: "ɳ", names: ["nasale rétroflexe"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɳ", names: ["ανακεκαμμένο ρινικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɽ", names: ["retroflex flap"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɽ", names: ["retroflexer Flap"])
        case .françaisFrance:
          return SymbolData(symbol: "ɽ", names: ["battue rétroflex"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɽ", names: ["ανακεκαμμένο πεταχτό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʂ", names: ["voiceless retroflex fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʂ", names: ["stimmloser retroflexer Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ʂ", names: ["fricative rétroflexe sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʂ", names: ["άηχο ανακεκαμμένο τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʐ", names: ["voiced retroflex fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʐ", names: ["stimmhafter retroflexer Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ʐ", names: ["fricative rétroflexe voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʐ", names: ["ηχηρό ανακεκαμμένο τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɻ", names: ["retroflex approximant"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɻ", names: ["retroflexer Approximant"])
        case .françaisFrance:
          return SymbolData(symbol: "ɻ", names: ["spirante rétroflexe voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɻ", names: ["ανακεκαμμένο προσεγγιστικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "z", names: ["retroflex lateral approximant"])
        case .deutschDeutschland:
          return SymbolData(symbol: "z", names: ["lateraler retroflexer Approximant"])
        case .françaisFrance:
          return SymbolData(symbol: "z", names: ["spirante latérale rétroflexe"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "z", names: ["πλευρικό ανακεκαμμένο προσεγγιστικό"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "c", names: ["voiceless palatal plosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "c", names: ["stimmloser palataler Plosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "c", names: ["occlusive palatale sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "c", names: ["άηχο ουρανικό έκκροτο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɟ", names: ["voiced palatal plosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɟ", names: ["stimmhafter palataler Plosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "ɟ", names: ["occlusive palatale voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɟ", names: ["ηχηρό ουρανικό έκκροτο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɲ", names: ["palatal nasal"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɲ", names: ["palataler Nasal"])
        case .françaisFrance:
          return SymbolData(symbol: "ɲ", names: ["nasale palatale"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɲ", names: ["ουρανικό ρινικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ç", names: ["voiceless palatal fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ç", names: ["stimmloser palataler Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ç", names: ["fricative palatale sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ç", names: ["άηχο ουρανικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʝ", names: ["voiced palatal fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʝ", names: ["stimmhafter palataler Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ʝ", names: ["fricative palatale voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʝ", names: ["ηχηρό ουρανικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "j", names: ["palatal approximant"])
        case .deutschDeutschland:
          return SymbolData(symbol: "j", names: ["palataler Approximant"])
        case .françaisFrance:
          return SymbolData(symbol: "j", names: ["spirante palatale"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "j", names: ["ουρανικό προσεγγιστικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʎ", names: ["palatal lateral approximant"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʎ", names: ["lateraler palataler Approximant"])
        case .françaisFrance:
          return SymbolData(symbol: "ʎ", names: ["spirante latérale palatale"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʎ", names: ["πλευρικό ουρανικό προσεγγιστικό"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "k", names: ["voiceless velar plosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "k", names: ["stimmloser velarer Plosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "k", names: ["occlusive vélaire sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "k", names: ["άηχο υπερωικό έκκροτο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɡ", names: ["voiced velar plosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɡ", names: ["stimmhafter velarer Plosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "ɡ", names: ["occlusive vélaire voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɡ", names: ["ηχηρό υπερωικό έκκροτο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ŋ", names: ["velar nasal"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ŋ", names: ["velarer Nasal"])
        case .françaisFrance:
          return SymbolData(symbol: "ŋ", names: ["nasale vélaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ŋ", names: ["υπερωικό ρινικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "x", names: ["voiceless velar fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "x", names: ["stimmloser velarer Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "x", names: ["fricative vélaire sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "x", names: ["άηχο υπερωικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɣ", names: ["voiced velar fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɣ", names: ["stimmhafter velarer Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ɣ", names: ["fricative vélaire voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɣ", names: ["ηχηρό υπερωικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɰ", names: ["velar approximant"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɰ", names: ["velarer Approximant"])
        case .françaisFrance:
          return SymbolData(symbol: "ɰ", names: ["spirante vélaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɰ", names: ["υπερωικό προσεγγιστικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʟ", names: ["velar lateral approximant"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʟ", names: ["lateraler velarer Approximant"])
        case .françaisFrance:
          return SymbolData(symbol: "ʟ", names: ["spirante latérale vélaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʟ", names: ["πλευρικό υπερωικό προσεγγιστικό"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "q", names: ["voiceless uvular plosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "q", names: ["stimmloser uvularer Plosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "q", names: ["occlusive uvulaire sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "q", names: ["άηχο σταφυλικό έκκροτο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɢ", names: ["voiced uvular plosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɢ", names: ["stimmhafter uvularer Plosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "ɢ", names: ["occlusive uvulaire voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɢ", names: ["ηχηρό σταφυλικό έκκροτο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɴ", names: ["uvular nasal"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɴ", names: ["uvularer Nasal"])
        case .françaisFrance:
          return SymbolData(symbol: "ɴ", names: ["nasale uvulaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɴ", names: ["σταφυλικό ρινικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʀ", names: ["uvular trill"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʀ", names: ["uvularer Vibrant"])
        case .françaisFrance:
          return SymbolData(symbol: "ʀ", names: ["roulée uvulaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʀ", names: ["σταφυλικό παλλόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "χ", names: ["voiceless uvular fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "χ", names: ["stimmloser uvularer Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "χ", names: ["fricative uvulaire sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "χ", names: ["άηχο σταφυλικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʁ", names: ["voiced uvular fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʁ", names: ["stimmhafter uvularer Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ʁ", names: ["fricative uvulaire voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʁ", names: ["ηχηρό σταφυλικό τριβόμενο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ħ", names: ["voiceless pharyngeal fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ħ", names: ["stimmloser pharyngaler Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ħ", names: ["fricative pharyngale sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ħ", names: ["άηχο φαρυγγικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʕ", names: ["voiced pharyngeal fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʕ", names: ["stimmhafter pharyngaler Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ʕ", names: ["fricative pharyngale voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʕ", names: ["ηχηρό φαρυγγικό τριβόμενο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʔ", names: ["glottal plosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʔ", names: ["glottaler Plosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "ʔ", names: ["occlusive glottale"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʔ", names: ["γλωττιδικό έκκροτο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "h", names: ["voiceless glottal fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "h", names: ["stimmloser glottaler Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "h", names: ["fricative glottale sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "h", names: ["άηχο γλωττιδικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɦ", names: ["voiced glottal fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɦ", names: ["glottaler Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ɦ", names: ["fricative glottale voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɦ", names: ["γλωττιδικό τριβόμενο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʘ", names: ["bilabial click"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʘ", names: ["bilabiale Klick"])
        case .françaisFrance:
          return SymbolData(symbol: "ʘ", names: ["clic bilabial"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʘ", names: ["διχειλικό κλικ"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ǀ", names: ["dental click"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ǀ", names: ["dentaler Klick"])
        case .françaisFrance:
          return SymbolData(symbol: "ǀ", names: ["clic dental"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ǀ", names: ["οδοντικό κλικ"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ǃ", names: ["alveolar click"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ǃ", names: ["alveolarer Klick"])
        case .françaisFrance:
          return SymbolData(symbol: "ǃ", names: ["clic post‐alvéolaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ǃ", names: ["φατνιακό κλικ"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ǂ", names: ["palatoalveolar click"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ǂ", names: ["palatoalveolar Klick"])
        case .françaisFrance:
          return SymbolData(symbol: "ǂ", names: ["clic alvéolo‐palatal"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ǂ", names: ["ουρανικοφατνιακό κλικ"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ǁ", names: ["alveolar lateral click"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ǁ", names: ["lateraler alveolarer Klick"])
        case .françaisFrance:
          return SymbolData(symbol: "ǁ", names: ["clic alvéolaire latéral"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ǁ", names: ["πλευρικό φατνιακό κλικ"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɓ", names: ["bilabial implosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɓ", names: ["bilabialer Implosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "ɓ", names: ["occlusive injective bilabiale"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɓ", names: ["διχειλικό ενδορρηκτικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɗ", names: ["alveolar implosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɗ", names: ["dentaler Implosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "ɗ", names: ["occlusive injective alvéolaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɗ", names: ["οδοντικό ενδορρηκτικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʄ", names: ["palatal implosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʄ", names: ["palataler Implosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "ʄ", names: ["occlusive injective palatale"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʄ", names: ["ουρανικό ενδορρηκτικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɠ", names: ["velar implosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɠ", names: ["velarer Implosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "ɠ", names: ["occlusive injective vélaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɠ", names: ["υπερωικό ενδορρηκτικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʛ", names: ["uvular implosive"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʛ", names: ["uvularer Implosiv"])
        case .françaisFrance:
          return SymbolData(symbol: "ʛ", names: ["occlusive injective uvulaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʛ", names: ["σταφυλικό ενδορρηκτικό"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʼ", names: ["ejective"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʼ", names: ["ejectiver"])
        case .françaisFrance:
          return SymbolData(symbol: "ʼ", names: ["éjective"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʼ", names: ["εκτινασσόμενο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʍ", names: ["labial‐velar fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʍ", names: ["labiovelarer Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ʍ", names: ["fricative labio‐vélaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʍ", names: ["χειλικό‐υπερωικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "w", names: ["labial‐velar approximant"])
        case .deutschDeutschland:
          return SymbolData(symbol: "w", names: ["labiovelarer Apprοximant"])
        case .françaisFrance:
          return SymbolData(symbol: "w", names: ["spirante labio‐vélaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "w", names: ["χειλικό‐υπερωικό προσεγγιστικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɥ", names: ["labial‐palatal approximant"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɥ", names: ["labiopalataler Approximant"])
        case .françaisFrance:
          return SymbolData(symbol: "ɥ", names: ["spirante labio‐palatale"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɥ", names: ["χειλικό‐ουρανικό προσεγγιστικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʜ", names: ["voiceless epiglottal fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʜ", names: ["stimmloser epiglottaler Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ʜ", names: ["fricative épiglottale sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʜ", names: ["άηχο επιγλωττιδικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʢ", names: ["voiced epiglottal fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʢ", names: ["stimmhafter epiglottaler Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ʢ", names: ["fricative épiglottale voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʢ", names: ["ηχηρό επιγλωττιδικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɕ", names: ["voiceless alveolo‐palatal fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɕ", names: ["stimmloser alveolopalataler Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ɕ", names: ["fricative alvéolo‐palatale sourde"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɕ", names: ["άηχο φατνιακο‐ουρανικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʑ", names: ["voiced alveolo‐palatal fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʑ", names: ["stimmhafter alveolopalataler Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ʑ", names: ["fricative alvéolo‐palatale voisée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʑ", names: ["ηχηρό φατνιακο‐ουρανικό τριβόμενο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɺ", names: ["alveolar lateral flap"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɺ", names: ["lateraler alveolarer Flap"])
        case .françaisFrance:
          return SymbolData(symbol: "ɺ", names: ["battue latérale alvéolaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɺ", names: ["πλευρικό φατνιακό πεταχτό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɧ", names: ["postalveolo‐velar fricative"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɧ", names: ["postalveolovelarer Frikativ"])
        case .françaisFrance:
          return SymbolData(symbol: "ɧ", names: ["fricative post‐alvéolo‐vélaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɧ", names: ["μεταφατνιακο‐υπερωικό τριβόμενο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "͡", names: ["affricate"])
        case .deutschDeutschland:
          return SymbolData(symbol: "͡", names: ["Affrikate"])
        case .françaisFrance:
          return SymbolData(symbol: "͡", names: ["affriquée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "͡", names: ["προστριβόμενο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "͜", names: ["affricate below"])
        case .deutschDeutschland:
          return SymbolData(symbol: "͜", names: ["Affrikate unten"])
        case .françaisFrance:
          return SymbolData(symbol: "͜", names: ["affriquée dessous"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "͜", names: ["προστριβόμενο unten"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "i", names: ["close front unrounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "i", names: ["ungerundeter geschlossener Vorderzungenvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "i", names: ["voyelle fermée antérieure non arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "i", names: ["κλειστό πρόσθιο αστρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "y", names: ["close front rounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "y", names: ["gerundeter geschlossener Vorderzungenvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "y", names: ["voyelle fermée antérieure arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "y", names: ["κλειστό πρόσθιο στρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɪ", names: ["lowered‐close front unrounded vowel"])
        case .deutschDeutschland:
          return SymbolData(
            symbol: "ɪ",
            names: ["ungerundeter fast geschlossener Vorderzungenvokal"]
          )
        case .françaisFrance:
          return SymbolData(symbol: "ɪ", names: ["voyelle pré‐fermée antérieure non arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(
            symbol: "ɪ",
            names: ["χαμηλωμένο‐κλειστό πρόσθιο αστρογγυλεμένο φωνήεν"]
          )
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʏ", names: ["lowered‐close front rounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʏ", names: ["gerundeter fast geschlossener Vorderzungenvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ʏ", names: ["voyelle pré‐fermée antérieure arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʏ", names: ["χαμηλωμένο‐κλειστό πρόσθιο στρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "e", names: ["close‐mid front unrounded vowel"])
        case .deutschDeutschland:
          return SymbolData(
            symbol: "e",
            names: ["ungerundeter halbgeschlossener Vorderzungenvokal"]
          )
        case .françaisFrance:
          return SymbolData(symbol: "e", names: ["voyelle mi‐fermée antérieure non arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "e", names: ["κλειστό‐μέσο πρόσθιο αστρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ø", names: ["close‐mid front rounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ø", names: ["gerundeter halbgeschlossener Vorderzungenvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ø", names: ["voyelle mi‐fermée antérieure arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ø", names: ["κλειστό‐μέσο πρόσθιο στρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɛ", names: ["open‐mid front unrounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɛ", names: ["ungerundeter halboffener Vorderzungenvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ɛ", names: ["voyelle mi‐ouverte antérieure non arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɛ", names: ["ανοιχτό‐μέσο πρόσθιο αστρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "œ", names: ["open‐mid front rounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "œ", names: ["gerundeter halboffener Vorderzungenvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "œ", names: ["voyelle mi‐ouverte antérieure arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "œ", names: ["ανοιχτό‐μέσο πρόσθιο στρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "æ", names: ["raised‐open front vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "æ", names: ["fast offener Vorderzungenvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "æ", names: ["voyelle pré‐ouverte antérieure"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "æ", names: ["υψωμένο‐ανοιχτό πρόσθιο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "a", names: ["open front unrounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "a", names: ["ungerundeter offener Vorderzungenvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "a", names: ["voyelle ouverte antérieure non arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "a", names: ["ανοιχτό πρόσθιο αστρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɶ", names: ["open front rounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɶ", names: ["gerundeter offener Vorderzungenvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ɶ", names: ["voyelle ouverte antérieure arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɶ", names: ["ανοιχτό πρόσθιο στρογγυλεμένο φωνήεν"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɨ", names: ["close central unrounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɨ", names: ["ungerundeter geschlossener Zentralvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ɨ", names: ["voyelle fermée centrale non arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɨ", names: ["κλειστό κεντρικό αστρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʉ", names: ["close central rounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʉ", names: ["gerundeter geschlossener Zentralvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ʉ", names: ["voyelle fermée centrale arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʉ", names: ["κλειστό κεντρικό στρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɘ", names: ["close‐mid central unrounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɘ", names: ["ungerundeter halbgeschlossener Zentralvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ɘ", names: ["voyelle mi‐fermée centrale non arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɘ", names: ["κλειστό‐μέσο κεντρικό αστρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɵ", names: ["close‐mid central rounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɵ", names: ["gerundeter halbgeschlossener Zentralvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ɵ", names: ["voyelle mi‐fermée centrale arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɵ", names: ["κλειστό‐μέσο κεντρικό στρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ə", names: ["mid vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ə", names: ["mittlerer Vokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ə", names: ["voyelle moyenne"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ə", names: ["μέσο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɜ", names: ["open‐mid central unrounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɜ", names: ["ungerundeter halboffener Zentralvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ɜ", names: ["voyelle mi‐ouverte centrale non arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɜ", names: ["ανοιχτό‐μέσο κεντρικό αστρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɞ", names: ["open‐mid central rounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɞ", names: ["gerundeter halboffener Zentralvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ɞ", names: ["voyelle mi‐ouverte centrale arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɞ", names: ["ανοιχτό‐μέσο κεντρικό στρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɐ", names: ["raised‐open central vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɐ", names: ["fast offener Zentralvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ɐ", names: ["voyelle pré‐ouverte centrale"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɐ", names: ["υψωμένο‐ανοιχτό κεντρικό φωνήεν"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɯ", names: ["close back unrounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɯ", names: ["ungerundeter geschlossener Hinterzungenvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ɯ", names: ["voyelle fermée postérieure non arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɯ", names: ["κλειστό οπίσθιο αστρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "u", names: ["close back rounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "u", names: ["gerundeter geschlossener Hinterzungenvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "u", names: ["voyelle fermée postérieure arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "u", names: ["κλειστό οπίσθιο στρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʊ", names: ["lowered‐close back vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʊ", names: ["fast offener Hinterzungenvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ʊ", names: ["voyelle pré‐fermée postérieure"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʊ", names: ["χαμηλωμένο‐κλειστό οπίσθιο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɤ", names: ["close‐mid back unrounded vowel"])
        case .deutschDeutschland:
          return SymbolData(
            symbol: "ɤ",
            names: ["ungerundeter halbgeschlossener Hinterzungenvokal"]
          )
        case .françaisFrance:
          return SymbolData(symbol: "ɤ", names: ["voyelle mi‐fermée postérieure non arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɤ", names: ["κλειστό‐μέσο οπίσθιο αστρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "o", names: ["close‐mid back rounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "o", names: ["gerundeter halbgeschlossener Hinterzungenvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "o", names: ["voyelle mi‐fermée postérieure arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "o", names: ["κλειστό‐μέσο οπίσθιο στρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʌ", names: ["open‐mid back unrounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʌ", names: ["ungerundeter halboffener Hinterzungenvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ʌ", names: ["voyelle mi‐ouverte postérieure non arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʌ", names: ["ανοιχτό‐μέσο οπίσθιο αστρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɔ", names: ["open‐mid back rounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɔ", names: ["gerundeter halboffener Hinterzungenvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ɔ", names: ["voyelle mi‐ouverte postérieure arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɔ", names: ["ανοιχτό‐μέσο οπίσθιο στρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɑ", names: ["open back unrounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɑ", names: ["ungerundeter offener Hinterzungenvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ɑ", names: ["voyelle ouverte postérieure non arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɑ", names: ["ανοιχτό οπίσθιο αστρογγυλεμένο φωνήεν"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɒ", names: ["open back rounded vowel"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɒ", names: ["gerundeter offener Hinterzungenvokal"])
        case .françaisFrance:
          return SymbolData(symbol: "ɒ", names: ["voyelle ouverte postérieure arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɒ", names: ["ανοιχτό οπίσθιο στρογγυλεμένο φωνήεν"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̥", names: ["voiceless"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̥", names: ["stimmlos"])
        case .françaisFrance:
          return SymbolData(symbol: "̥", names: ["sourd"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̥", names: ["άηχο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̊", names: ["voiceless above"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̊", names: ["stimmlos oben"])
        case .françaisFrance:
          return SymbolData(symbol: "̊", names: ["sourd dessus"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̊", names: ["άηχο πάνω"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̬", names: ["voiced"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̬", names: ["stimmhaft"])
        case .françaisFrance:
          return SymbolData(symbol: "̬", names: ["voisé"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̬", names: ["ήχηρό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "h", names: ["aspirated"])
        case .deutschDeutschland:
          return SymbolData(symbol: "h", names: ["aspiriert"])
        case .françaisFrance:
          return SymbolData(symbol: "h", names: ["aspiré"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "h", names: ["δασύ"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̹", names: ["more rounded"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̹", names: ["stärker gerundet"])
        case .françaisFrance:
          return SymbolData(symbol: "̹", names: ["plus arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̹", names: ["περισσότερο στρογγυλεμένο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̜", names: ["less rounded"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̜", names: ["weniger gerundet"])
        case .françaisFrance:
          return SymbolData(symbol: "̜", names: ["moins arrondie"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̜", names: ["λιγότερο στρογγυλεμένο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̟", names: ["advanced"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̟", names: ["weiter vorne"])
        case .françaisFrance:
          return SymbolData(symbol: "̟", names: ["plus antérieur"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̟", names: ["προωθημένο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̠", names: ["retracted"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̠", names: ["weiter hinten"])
        case .françaisFrance:
          return SymbolData(symbol: "̠", names: ["plus postérieur"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̠", names: ["οπισθοχωρημένο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̈", names: ["centralized"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̈", names: ["zentralisiert"])
        case .françaisFrance:
          return SymbolData(symbol: "̈", names: ["centralisé"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̈", names: ["κεντροποιημένο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̽", names: ["mid‐centralized"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̽", names: ["zur Mitte zentralisiert"])
        case .françaisFrance:
          return SymbolData(symbol: "̽", names: ["semi‐centralisé"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̽", names: ["μεσο‐κεντροποιημένο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̩", names: ["syllabic"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̩", names: ["silbisch"])
        case .françaisFrance:
          return SymbolData(symbol: "̩", names: ["vocalisé"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̩", names: ["συλλαβικό"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̯", names: ["non‐syllabic"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̯", names: ["nichtsilbisch"])
        case .françaisFrance:
          return SymbolData(symbol: "̯", names: ["non syllabique"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̯", names: ["μη‐συλλαβικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "˞", names: ["rhoticity"])
        case .deutschDeutschland:
          return SymbolData(symbol: "˞", names: ["rhotisch"])
        case .françaisFrance:
          return SymbolData(symbol: "˞", names: ["rhotacisme"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "˞", names: ["ρωτικότητα"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̤", names: ["breathy"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̤", names: ["behaucht"])
        case .françaisFrance:
          return SymbolData(symbol: "̤", names: ["murmure"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̤", names: ["αναπνευστικό"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̰", names: ["creaky"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̰", names: ["knarrig"])
        case .françaisFrance:
          return SymbolData(symbol: "̰", names: ["craqué"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̰", names: ["τριγμώδες"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̫", names: ["linguolabial"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̫", names: ["linguolabial"])
        case .françaisFrance:
          return SymbolData(symbol: "̫", names: ["linguo‐labiale"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̫", names: ["γλωσσοχειλικό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "w", names: ["labialized"])
        case .deutschDeutschland:
          return SymbolData(symbol: "w", names: ["labialisiert"])
        case .françaisFrance:
          return SymbolData(symbol: "w", names: ["labialisé"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "w", names: ["χειλικοποιημένο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "j", names: ["palatalized"])
        case .deutschDeutschland:
          return SymbolData(symbol: "j", names: ["palatalisiert"])
        case .françaisFrance:
          return SymbolData(symbol: "j", names: ["palatalisé"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "j", names: ["ουρανικοποιημένο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ɣ", names: ["velarized"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ɣ", names: ["velarisiert"])
        case .françaisFrance:
          return SymbolData(symbol: "ɣ", names: ["vélarisé"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ɣ", names: ["υπερωικοποιημένο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʕ", names: ["pharyngealized"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʕ", names: ["pharyngalisiert"])
        case .françaisFrance:
          return SymbolData(symbol: "ʕ", names: ["pharyngalisé"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ʕ", names: ["φαρυγγικοποιημένο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̴", names: ["velarized or pharyngalized"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̴", names: ["velarisiert oder pharyngalisiert"])
        case .françaisFrance:
          return SymbolData(symbol: "̴", names: ["velarisé ou pharyngalisé"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̴", names: ["υπερωικοποιημένο ή φαρυγγικοποιημένο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̝", names: ["raised"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̝", names: ["angehoben"])
        case .françaisFrance:
          return SymbolData(symbol: "̝", names: ["montée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̝", names: ["υψωμένο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̞", names: ["lowered"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̞", names: ["gesenkt"])
        case .françaisFrance:
          return SymbolData(symbol: "̞", names: ["descente"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̞", names: ["χαμηλωμένο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̘", names: ["advanced tongue root"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̘", names: ["vorverlagerte Zungenwurzel"])
        case .françaisFrance:
          return SymbolData(symbol: "̘", names: ["racine linguale avancée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̘", names: ["προωθημένη ρίζα γλώσσας"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̙", names: ["retracted tongue root"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̙", names: ["zurückverlagerte Zungenwurzel"])
        case .françaisFrance:
          return SymbolData(symbol: "̙", names: ["racine linguale rétractée"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̙", names: ["οπισθοχωρημένη ρίζα γλώσσας"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̪", names: ["dental"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̪", names: ["dental"])
        case .françaisFrance:
          return SymbolData(symbol: "̪", names: ["dental"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̪", names: ["οδοντικό"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̺", names: ["apical"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̺", names: ["apikal"])
        case .françaisFrance:
          return SymbolData(symbol: "̺", names: ["apical"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̺", names: ["ακραίο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̻", names: ["laminal"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̻", names: ["laminal"])
        case .françaisFrance:
          return SymbolData(symbol: "̻", names: ["laminal"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̻", names: ["ελασματικό"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̃", names: ["nasalized"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̃", names: ["nasalisiert"])
        case .françaisFrance:
          return SymbolData(symbol: "̃", names: ["nasalisé"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̃", names: ["ρινικοποιημένο"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "n", names: ["nasal release"])
        case .deutschDeutschland:
          return SymbolData(symbol: "n", names: ["nasale Verschlusslösung"])
        case .françaisFrance:
          return SymbolData(symbol: "n", names: ["désocclusion nasale"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "n", names: ["ρινική ελευθέρωση"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "l", names: ["lateral release"])
        case .deutschDeutschland:
          return SymbolData(symbol: "l", names: ["laterale Verschlusslösung"])
        case .françaisFrance:
          return SymbolData(symbol: "l", names: ["désocclusion latérale"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "l", names: ["πλευρική ελευθέρωση"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̚", names: ["no autible release"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̚", names: ["keine hörbare Verschlusslösung"])
        case .françaisFrance:
          return SymbolData(symbol: "̚", names: ["désocclusion inaudible"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̚", names: ["μη ακουστή ελευθέρωση"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ˈ", names: ["primary stress"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ˈ", names: ["Hauptbetonung"])
        case .françaisFrance:
          return SymbolData(symbol: "ˈ", names: ["accent primaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ˈ", names: ["ηρωτεύων τόνος"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ˌ", names: ["secondary stress"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ˌ", names: ["Nebenbetonung"])
        case .françaisFrance:
          return SymbolData(symbol: "ˌ", names: ["accent secondaire"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ˌ", names: ["δευτερεύων τόνος"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ː", names: ["long"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ː", names: ["lang"])
        case .françaisFrance:
          return SymbolData(symbol: "ː", names: ["long"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ː", names: ["μακρό"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ˑ", names: ["half‐long stress"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ˑ", names: ["halblang"])
        case .françaisFrance:
          return SymbolData(symbol: "ˑ", names: ["mi‐long"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ˑ", names: ["ημίμακρο"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̆", names: ["extra‐short stress"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̆", names: ["extrakurz"])
        case .françaisFrance:
          return SymbolData(symbol: "̆", names: ["extra‐bref"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̆", names: ["έξτρα‐βραχύ"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "|", names: ["minor group"])
        case .deutschDeutschland:
          return SymbolData(symbol: "|", names: ["untergeordneter Intonationsgruppe"])
        case .françaisFrance:
          return nil
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "|", names: ["ελάσσων ομάδα"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "|\u{7C}", names: ["major group"])
        case .deutschDeutschland:
          return SymbolData(symbol: "|\u{7C}", names: ["übergeordneter Intonationsgruppe"])
        case .françaisFrance:
          return nil
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "|\u{7C}", names: ["μείζων ομάδα"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: ".", names: ["syllable break"])
        case .deutschDeutschland:
          return SymbolData(symbol: ".", names: ["Silbengrenze"])
        case .françaisFrance:
          return SymbolData(symbol: ".", names: ["séparation syllabique"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: ".", names: ["συλλαβικός διαχωρισμός"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "‿", names: ["linking"])  // Unofficial
        case .deutschDeutschland:
          return SymbolData(symbol: "‿", names: ["Liaison"])
        case .françaisFrance:
          return SymbolData(symbol: "‿", names: ["liaison"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "‿", names: ["φωνητική σύζευξη"])  // → λογική (∧)
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̋", names: ["extra‐high tone mark"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̋", names: ["besonders hohes Tonzeichen"])
        case .françaisFrance:
          return SymbolData(symbol: "̋", names: ["ton haut diacritique"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̋", names: ["έξτρα ψηλό τονικό σημάδι"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "˥", names: ["extra‐high tone letter"])
        case .deutschDeutschland:
          return SymbolData(symbol: "˥", names: ["besonders hoher Tonbuchstabe"])
        case .françaisFrance:
          return SymbolData(symbol: "˥", names: ["ton haut barre"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "˥", names: ["έξτρα ψηλό τονικό γράμμα"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "́", names: ["high tone mark"])
        case .deutschDeutschland:
          return SymbolData(symbol: "́", names: ["hohes Tonzeichen"])
        case .françaisFrance:
          return SymbolData(symbol: "́", names: ["ton mi‐haut diacritique"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "́", names: ["ψηλό τονικό σημάδι"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "˦", names: ["high tone letter"])
        case .deutschDeutschland:
          return SymbolData(symbol: "˦", names: ["hoher Tonbuchstabe"])
        case .françaisFrance:
          return SymbolData(symbol: "˦", names: ["ton mi‐haut barre"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "˦", names: ["ψηλό τονικό γράμμα"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̄", names: ["mid tone mark"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̄", names: ["mittles tonzeichen"])
        case .françaisFrance:
          return SymbolData(symbol: "̄", names: ["ton médian diacritique"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̄", names: ["μέσο τονικό σημάδι"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "˧", names: ["mid tone letter"])
        case .deutschDeutschland:
          return SymbolData(symbol: "˧", names: ["mittler Tonbuchstabe"])
        case .françaisFrance:
          return SymbolData(symbol: "˧", names: ["ton médian barre"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "˧", names: ["μέσο τονικό γράμμα"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̀", names: ["low tone mark"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̀", names: ["niedriges Tonzeichen"])
        case .françaisFrance:
          return SymbolData(symbol: "̀", names: ["ton mi‐bas diacritique"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̀", names: ["χαμηλό τονικό σημάδι"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "˨", names: ["low tone letter"])
        case .deutschDeutschland:
          return SymbolData(symbol: "˨", names: ["niedriger Tonbuchstabe"])
        case .françaisFrance:
          return SymbolData(symbol: "˨", names: ["ton mi‐bas barre"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "˨", names: ["χαμηλό τονικό γράμμα"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̏", names: ["extra‐low tone mark"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̏", names: ["besonders niedriges Tonzeichen"])
        case .françaisFrance:
          return SymbolData(symbol: "̏", names: ["ton bas diacritique"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̏", names: ["έξτρα χαμηλό τονικό σημάδι"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "˩", names: ["extra‐low tone letter"])
        case .deutschDeutschland:
          return SymbolData(symbol: "˩", names: ["besonders niedriger Tonbuchstabe"])
        case .françaisFrance:
          return SymbolData(symbol: "˩", names: ["ton bas barre"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "˩", names: ["έξτρα χαμηλό τονικό γράμμα"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̌", names: ["rising contour mark"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̌", names: ["steigener Ton"])
        case .françaisFrance:
          return SymbolData(symbol: "̌", names: ["ton ascendant"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̌", names: ["ανερχόμενος τόνος"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̂", names: ["falling contour mark"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̂", names: ["fallender Ton"])
        case .françaisFrance:
          return SymbolData(symbol: "̂", names: ["ton descendant"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "̂", names: ["κατερχόμενος τόνος"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "᷄", names: ["high rising contour mark"])
        case .deutschDeutschland:
          return SymbolData(symbol: "᷄", names: ["hoher steigender Ton"])
        case .françaisFrance:
          return SymbolData(symbol: "᷄", names: ["ton ascendant haut"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "᷄", names: ["ψηλός ανερχόμενος τόνος"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "᷅", names: ["low rising contour mark"])
        case .deutschDeutschland:
          return SymbolData(symbol: "᷅", names: ["niedriger steigender Ton"])
        case .françaisFrance:
          return SymbolData(symbol: "᷅", names: ["ton ascendant bas"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "᷅", names: ["χαμηλός ανερχόμενος τόνος"])
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "᷈", names: ["rising‐falling contour mark"])
        case .deutschDeutschland:
          return SymbolData(symbol: "᷈", names: ["steigender‐fallender Ton"])
        case .françaisFrance:
          return SymbolData(symbol: "᷈", names: ["ton montant‐descendant"])
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "᷈", names: ["ανερχόμενος‐κατερχόμενος τόνος"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ꜜ", names: ["downstep"])
        case .deutschDeutschland, .françaisFrance:
          return nil
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ꜜ", names: ["κατάβαση"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ꜛ", names: ["upstep"])
        case .deutschDeutschland, .françaisFrance:
          return nil
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "ꜜ", names: ["ανάβαση"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "↗", names: ["global rise"])
        case .deutschDeutschland, .françaisFrance:
          return nil
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "↗", names: ["καθολική άνοδος"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "↘", names: ["global fall"])
        case .deutschDeutschland, .françaisFrance:
          return nil
        case .ελληνικάΕλλάδα:
          return SymbolData(symbol: "↘", names: ["καθολική κάθοδος"])
        }
      }),
    ]
  }
}
