/*
 DeadKey.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import SDGText

/// A dead key.
public enum DeadKey {

  // MARK: - Dead Keys

  /// Adds a stroke, such as “đ”, “ħ”, “ɨ”, “ł”, “ø”, “ŧ”, “ʉ” or “ғ”.
  public static let stroke: StrictString = "Stroke"
  /// Adds a hook, such as “ɓ”, “ɗ”, “ƒ”, “ƙ”, “ɲ”, “ʋ”, or “ƴ”.
  public static let hook: StrictString = "Hook"
  /// Adds a descender or similar mark, such as “ґ”, “қ”, “ң”, “ө”, “ұ”, “ҳ” or “ҷ”.
  public static let descender: StrictString = "Descender"

  /// Swaps the ASCII hyphen‐minus with its proper replacements by following it with the first letter of its purpose: h̲ypen (‐), m̲inus (−), d̲ash (—), b̲ullet (•) or r̲ange (–).
  public static let hyphenMinusEnglish: StrictString = "EnglishHyphenMinus"
  /// Swaps the ASCII apostrophe‐quote with its proper replacements by following it with the first letter of its purpose: a̲postrophe (’), l̲eft/r̲ight quotation mark (‘/’) or f̲eet/m̲inutes (′).
  public static let singleQuoteEnglish: StrictString = "EnglishSingleQuote"
  /// Swaps the ASCII double quotation mark with its proper replacements by following it with the first letter of its purpose: l̲eft/r̲ight quotation mark (“/”) or i̲nches/s̲econds (′′).
  public static let doubleQuoteEnglish: StrictString = "EnglishDoubleQuote"

  // MARK: - Dead Key Sets

  /// The labels for dead keys provided by `DeadKey`.
  public static let defaultLabels: [StrictString: StrictString] = [
    stroke: " ̵",
    hook: " ̡",
    descender: " ̩",

    hyphenMinusEnglish: "[h̲yph./d̲ash/m̲inus/r̲ange/b̲ullet]",
    singleQuoteEnglish: "[a̲postr./l̲./r̲.quot./f̲t./m̲in.]",
    doubleQuoteEnglish: "[l̲./r̲.quot/i̲n./s̲ec.]",
  ]

  /// The mappings for dead keys provided by `DeadKey`.
  public static let defaultMappings: [StrictString: [StrictString: StrictString]] = [
    "A": [singleQuoteEnglish: "’"],
    "a": [singleQuoteEnglish: "’"],
    "B": [hook: "Ɓ", hyphenMinusEnglish: "•"],
    "b": [hook: "ɓ", hyphenMinusEnglish: "•"],
    "D": [stroke: "Đ", hook: "Ɗ", hyphenMinusEnglish: "—"],
    "d": [stroke: "đ", hook: "ɗ", hyphenMinusEnglish: "—"],
    "F": [hook: "Ƒ", singleQuoteEnglish: "′"],
    "f": [hook: "ƒ", singleQuoteEnglish: "′"],
    "H": [stroke: "Ħ", hyphenMinusEnglish: "‐"],
    "h": [stroke: "ħ", hyphenMinusEnglish: "‐"],
    "I": [stroke: "Ɨ", doubleQuoteEnglish: "′′"],
    "i": [stroke: "ɨ", doubleQuoteEnglish: "′′"],
    "K": [hook: "Ƙ"],
    "k": [hook: "ƙ"],
    "L": [stroke: "Ł", singleQuoteEnglish: "‘", doubleQuoteEnglish: "“"],
    "l": [stroke: "ł", singleQuoteEnglish: "‘", doubleQuoteEnglish: "“"],
    "M": [hyphenMinusEnglish: "−", singleQuoteEnglish: "′"],
    "m": [hyphenMinusEnglish: "−", singleQuoteEnglish: "′"],
    "N": [hook: "Ɲ"],
    "n": [hook: "ɲ"],
    "O": [stroke: "Ø"],
    "o": [stroke: "ø"],
    "R": [hyphenMinusEnglish: "–", singleQuoteEnglish: "’", doubleQuoteEnglish: "”"],
    "r": [hyphenMinusEnglish: "–", singleQuoteEnglish: "’", doubleQuoteEnglish: "”"],
    "S": [doubleQuoteEnglish: "′′"],
    "s": [doubleQuoteEnglish: "′′"],
    "T": [stroke: "Ŧ"],
    "t": [stroke: "ŧ"],
    "U": [stroke: "Ʉ"],
    "u": [stroke: "ʉ"],
    "V": [hook: "Ʋ"],
    "v": [hook: "ʋ"],
    "Y": [hook: "Ƴ"],
    "y": [hook: "ƴ"],

    "Г": [stroke: "Ғ", descender: "Ґ"],
    "г": [stroke: "ғ", descender: "ґ"],
    "К": [descender: "Қ"],
    "к": [descender: "қ"],
    "Н": [descender: "Ң"],
    "н": [descender: "ң"],
    "О": [descender: "Ө"],
    "о": [descender: "ө"],
    "Ү": [descender: "Ұ"],
    "ү": [descender: "ұ"],
    "Х": [descender: "Ҳ"],
    "х": [descender: "ҳ"],
    "Ч": [descender: "Ҷ"],
    "ч": [descender: "ҷ"],
  ]

  // MARK: - Methods

  internal static func assimilate(
    symbols: [StrictString: [StrictString: StrictString]],
    intoDeadKeys deadKeys: [StrictString: [StrictString: StrictString]]
  ) -> [StrictString: [StrictString: StrictString]] {

    var combined = deadKeys
    for (key, mapping) in symbols {
      var deadMapping = combined[key, default: [:]]
      for (subkey, value) in mapping {
        deadMapping[subkey] = value
      }
      combined[key] = deadMapping
    }
    return combined
  }
}
