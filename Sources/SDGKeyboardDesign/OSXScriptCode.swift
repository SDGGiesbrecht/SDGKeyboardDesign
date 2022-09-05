/*
 OSXScriptCode.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2022 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

/// A code for a script to use for applications that do not support Unicode.
public enum OSXScriptCode: String, Sendable {

  /// Western Latin alphabets.
  case latinWestern = "0"
  /// Eastern Latin alphabets.
  case latinEastern = "29"
  /// Cyrillic.
  case cyrillic = "7"
  /// Traditional Chinese.
  case chineseTraditional = "2"
  /// Simplified Chinese.
  case chineseSimplified = "25"
  /// Korean.
  case korean = "3"
  /// Japanese.
  case japanese = "1"
  /// The keyboard will be unavailable in non‐Unicode applications.
  case none = "126"
}
