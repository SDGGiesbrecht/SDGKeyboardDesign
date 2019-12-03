/*
 ContentLocalization.swift

 This source file is part of the SDGKeyboardDesign open source project.

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 */

import SDGLocalization

public enum ContentLocalization: String, InputLocalization {

  // MARK: - Cases

  case englishUnitedKingdom = "en\u{2D}GB"
  case englishUnitedStates = "en\u{2D}US"
  case englishCanada = "en\u{2D}CA"

  case deutschDeutschland = "de\u{2D}DE"

  case françaisFrance = "fr\u{2D}FR"

  // MARK: - Localization

  public static let fallbackLocalization: ContentLocalization = .englishUnitedKingdom
}
