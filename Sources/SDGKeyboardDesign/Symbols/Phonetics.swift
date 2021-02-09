/*
 Phonetics.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2021 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

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
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ʋ", names: ["labiodental approximant"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ʋ", names: ["labiodentaler Approximant"])
        case .françaisFrance:
          return SymbolData(symbol: "ʋ", names: ["spirante labio‐dentale"])
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
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "w", names: ["labial‐velar approximant"])
        case .deutschDeutschland:
          return SymbolData(symbol: "w", names: ["labiovelarer Appriximant"])
        case .françaisFrance:
          return SymbolData(symbol: "w", names: ["spirante labio‐vélaire"])
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
        }
      }),

      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "̏", names: ["extra‐low tone mark"])
        case .deutschDeutschland:
          return SymbolData(symbol: "̏", names: ["besonders niedrieges Tonzeichen"])
        case .françaisFrance:
          return SymbolData(symbol: "̏", names: ["ton bas diacritique"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "˩", names: ["extra‐low tone letter"])
        case .deutschDeutschland:
          return SymbolData(symbol: "˩", names: ["besonders niedrieger Tonbuchstabe"])
        case .françaisFrance:
          return SymbolData(symbol: "˩", names: ["ton bas barre"])
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
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ꜜ", names: ["downstep"])
        case .deutschDeutschland:
          return SymbolData(symbol: "ꜜ", names: [""])
        case .françaisFrance:
          return SymbolData(symbol: "ꜜ", names: ["faille tonale"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "ꜛ", names: ["upstep"])
        case .deutschDeutschland, .françaisFrance:
          return nil
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "↗", names: ["global rise"])
        case .deutschDeutschland, .françaisFrance:
          return nil
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "↘", names: ["global fall"])
        case .deutschDeutschland, .françaisFrance:
          return nil
        }
      }),
    ]
  }
}
