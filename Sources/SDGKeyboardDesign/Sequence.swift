/*
 Sequence.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2023 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import SDGKeyboard

extension Sequence where Element == Key {

  internal func sorted() -> [Key] {
    return sorted(by: { "\($0)" < "\($1)" })
  }
}
