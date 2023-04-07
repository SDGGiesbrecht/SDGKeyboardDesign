/*
 ContentLocalization.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2023 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import SDGLocalization

public enum ContentLocalization: String, InputLocalization {

  // MARK: - Cases

  case englishUnitedKingdom = "en\u{2D}GB"
  case englishUnitedStates = "en\u{2D}US"
  case englishCanada = "en\u{2D}CA"

  case deutschDeutschland = "de\u{2D}DE"

  case françaisFrance = "fr\u{2D}FR"

  case ελληνικάΕλλάδα = "el\u{2D}GR"

  // MARK: - Localization

  public static let fallbackLocalization: ContentLocalization = .englishUnitedKingdom
}
