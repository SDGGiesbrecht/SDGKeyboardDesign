/*
 Currency.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

extension Symbol {

  internal static var currency: [LocalizedSymbol] {
    return [
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "₵", names: ["cedi"])
        case .deutschDeutschland:
          return SymbolData(symbol: "₵", names: ["Cedi"])
        case .françaisFrance:
          return SymbolData(symbol: "₵", names: ["cedi"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "¢", names: ["cent", "cents"])
        case .deutschDeutschland:
          return SymbolData(symbol: "¢", names: ["Amerikanischer Cent"])
        case .françaisFrance:
          return SymbolData(symbol: "¢", names: ["cent", "cents"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "¢", names: ["cent", "cents"])
        case .deutschDeutschland:
          return SymbolData(symbol: "¢", names: ["Kanadischer Cent"])
        case .françaisFrance:
          return SymbolData(symbol: "¢", names: ["cent", "cents"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "c", names: ["euro cent"])
        case .deutschDeutschland:
          return SymbolData(symbol: "c", names: ["Cent"])
        case .françaisFrance:
          return SymbolData(symbol: "c", names: ["centime", "centimes"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "₡", names: ["colón", "colóns"])
        case .deutschDeutschland:
          return SymbolData(symbol: "₡", names: ["Colón"])
        case .françaisFrance:
          return SymbolData(symbol: "₡", names: ["colón", "colóns"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "₫", names: ["đồng"])
        case .deutschDeutschland:
          return SymbolData(symbol: "₫", names: ["Đồng"])
        case .françaisFrance:
          return SymbolData(symbol: "₫", names: ["đồng", "đồngs"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "€", names: ["euro"])
        case .deutschDeutschland:
          return SymbolData(symbol: "€", names: ["Euro"])
        case .françaisFrance:
          return SymbolData(symbol: "€", names: ["euro", "euros"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "₲", names: ["guaraní", "guaranís"])
        case .deutschDeutschland:
          return SymbolData(symbol: "₲", names: ["Guaraní"])
        case .françaisFrance:
          return SymbolData(symbol: "₲", names: ["guaraní", "guaraníes"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "₴", names: ["hryvnia", "hryvnias"])
        case .deutschDeutschland:
          return SymbolData(symbol: "₴", names: ["Hrywnja"])
        case .françaisFrance:
          return SymbolData(symbol: "₴", names: ["hryvnia", "hryvnias"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "₭", names: ["kip"])
        case .deutschDeutschland:
          return SymbolData(symbol: "₭", names: ["Kip"])
        case .françaisFrance:
          return SymbolData(symbol: "₭", names: ["kip", "kips"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "₾", names: ["lari"])
        case .deutschDeutschland:
          return SymbolData(symbol: "₾", names: ["Lari"])
        case .françaisFrance:
          return SymbolData(symbol: "₾", names: ["lari", "laris"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "₺", names: ["lira", "lire"])
        case .deutschDeutschland:
          return SymbolData(symbol: "₺", names: ["Lira"])
        case .françaisFrance:
          return SymbolData(symbol: "₺", names: ["lire"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "£", names: ["pound", "pounds"])
        case .deutschDeutschland:
          return SymbolData(symbol: "£", names: ["Pfund"])
        case .françaisFrance:
          return SymbolData(symbol: "£", names: ["livre", "livres"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "₼", names: ["manat", "manats"])
        case .deutschDeutschland:
          return SymbolData(symbol: "₼", names: ["Manat"])
        case .françaisFrance:
          return SymbolData(symbol: "₼", names: ["manat", "manats"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "₦", names: ["naira", "nairas"])
        case .deutschDeutschland:
          return SymbolData(symbol: "₦", names: ["Naira"])
        case .françaisFrance:
          return SymbolData(symbol: "₦", names: ["naira", "nairas"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "$", names: ["Mexican peso", "Mexican pesos"])
        case .deutschDeutschland:
          return SymbolData(symbol: "$", names: ["mexikanischer Peso"])
        case .françaisFrance:
          return SymbolData(symbol: "$", names: ["peso mexicain", "pesos mexicains"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "$", names: ["Uruguayan peso", "Uruguayan pesos"])
        case .deutschDeutschland:
          return SymbolData(symbol: "$", names: ["uruguayischer Peso"])
        case .françaisFrance:
          return SymbolData(symbol: "$", names: ["peso uruguayen", "pesos uruguayens"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "$", names: ["dollar", "dollars"])
        case .deutschDeutschland:
          return SymbolData(symbol: "$", names: ["Dollar"])
        case .françaisFrance:
          return SymbolData(symbol: "$", names: ["dollar", "dollars"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "₱", names: ["Philippine peso", "Philippine pesos"])
        case .deutschDeutschland:
          return SymbolData(symbol: "₱", names: ["philippinischer Peso"])
        case .françaisFrance:
          return SymbolData(symbol: "₱", names: ["peso philippin", "pesos philippins"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "₽", names: ["ruble", "rubles"])
        case .deutschDeutschland:
          return SymbolData(symbol: "₽", names: ["Rubel"])
        case .françaisFrance:
          return SymbolData(symbol: "₽", names: ["rouble", "roubles"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "₹", names: ["rupee", "rupees"])
        case .deutschDeutschland:
          return SymbolData(symbol: "₹", names: ["Rupie"])
        case .françaisFrance:
          return SymbolData(symbol: "₹", names: ["roupie", "roupies"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "₪", names: ["shekel", "shekels"])
        case .deutschDeutschland:
          return SymbolData(symbol: "₪", names: ["Schekel"])
        case .françaisFrance:
          return SymbolData(symbol: "₪", names: ["shekel", "shekels"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "₸", names: ["tenge", "tenges"])
        case .deutschDeutschland:
          return SymbolData(symbol: "₸", names: ["Tenge"])
        case .françaisFrance:
          return SymbolData(symbol: "₸", names: ["tenge", "tenges"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "₮", names: ["tögrög"])
        case .deutschDeutschland:
          return SymbolData(symbol: "₮", names: ["Tögrög"])
        case .françaisFrance:
          return SymbolData(symbol: "₮", names: ["tugrik", "tugriks"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "₩", names: ["won"])
        case .deutschDeutschland:
          return SymbolData(symbol: "₩", names: ["Won"])
        case .françaisFrance:
          return SymbolData(symbol: "₩", names: ["won", "wons"])
        }
      }),
      LocalizedSymbol({ localization in
        switch localization {
        case .englishUnitedKingdom, .englishUnitedStates, .englishCanada:
          return SymbolData(symbol: "¥", names: ["yen"])
        case .deutschDeutschland:
          return SymbolData(symbol: "¥", names: ["Yen"])
        case .françaisFrance:
          return SymbolData(symbol: "¥", names: ["yen", "yens"])
        }
      }),
    ]
  }
}
