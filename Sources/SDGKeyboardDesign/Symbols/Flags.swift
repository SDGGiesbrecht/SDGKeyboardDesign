/*
 Flags.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
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
