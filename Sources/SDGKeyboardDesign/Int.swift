/*
 Int.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2021–2023 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import SDGText
import SDGLocalization

extension Int {

  internal func inUninteruptedDigits() -> StrictString {
    return inDigits(thousandsSeparator: " ")
      .replacingMatches(for: " ".scalars.literal(), with: "".scalars)
      .replacingMatches(for: "−".scalars.literal(), with: "\u{2D}".scalars)
  }
}
