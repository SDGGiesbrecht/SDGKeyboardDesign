/*
 Flags.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2021 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import SDGLocalization

extension Symbol {

  internal static var flags: [LocalizedSymbol] {
    return Array(
      StateData.list.lazy.map({ state in
        return LocalizedSymbol({ localization in
          if let name = state.isolatedName(in: localization) {
            return SymbolData(symbol: state.flag, names: [name])
          } else {
            return nil
          }
        })
      })
    )
  }
}
