/*
 Arrangement.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2021 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import SDGText
import SDGKeyboard

/// The arrangement of characters on a layer.
public enum Arrangement {

  internal static let root: [Key: StrictString] = [
    Key.deleteBackspace: "\u{8}",

    Key.tabulation: "\u{9}",

    Key.return: "\u{D}",

    Key.thumbs: " ",

    Key.help: "\u{5}",
    Key.home: "\u{1}",
    Key.pageUp: "\u{B}",
    Key.deleteForward: "\u{7F}",
    Key.end: "\u{4}",
    Key.pageDown: "\u{C}",

    Key.arrowUp: "\u{1E}",
    Key.arrowLeft: "\u{1C}",
    Key.arrowDown: "\u{1F}",
    Key.arrowRight: "\u{1D}",

    Key.clear: "\u{1B}",
    Key.enterPad: "\u{3}",

    Key.escape: "\u{1B}",
    Key.f1: "\u{10}",
    Key.f2: "\u{10}",
    Key.f3: "\u{10}",
    Key.f4: "\u{10}",
    Key.f5: "\u{10}",
    Key.f6: "\u{10}",
    Key.f7: "\u{10}",
    Key.f8: "\u{10}",
    Key.f9: "\u{10}",
    Key.f10: "\u{10}",
    Key.f11: "\u{10}",
    Key.f12: "\u{10}",
    Key.f13: "\u{10}",
    Key.f14: "\u{10}",
    Key.f16: "\u{10}",
    Key.f17: "\u{10}",
    Key.f18: "\u{10}",
    Key.f19: "\u{10}",

    Key.volumeUp: "\u{1F}",

    Key.unidentifiedCode42: "\u{1D}",
    Key.unidentifiedCode46: "\u{1C}",
    Key.unidentifiedCode4D: "\u{1E}",
  ]

  /// ANSI lowercase.
  public static let ansiLowercase: [Key: StrictString] = [
    Key.leftLittleTop: "1",
    Key.leftRingTop: "2",
    Key.leftMiddleTop: "3",
    Key.leftIndexTop: "4",
    Key.leftInsideTop: "5",

    Key.rightInsideTop: "6",
    Key.rightIndexTop: "7",
    Key.rightMiddleTop: "8",
    Key.rightRingTop: "9",
    Key.rightLittleTop: "0",
    Key.rightOutsideTop: "\u{2D}",
    Key.rightDoubleOutsideTop: "=",

    Key.leftLittleUpper: "q",
    Key.leftRingUpper: "w",
    Key.leftMiddleUpper: "e",
    Key.leftIndexUpper: "r",
    Key.leftInsideUpper: "t",

    Key.rightInsideUpper: "y",
    Key.rightIndexUpper: "u",
    Key.rightMiddleUpper: "i",
    Key.rightRingUpper: "o",
    Key.rightLittleUpper: "p",

    Key.rightOutsideUpper: "[",
    Key.rightDoubleOutsideUpper: "]",

    Key.leftLittleHome: "a",
    Key.leftRingHome: "s",
    Key.leftMiddleHome: "d",
    Key.leftIndexHome: "f",
    Key.leftInsideHome: "g",

    Key.rightInsideHome: "h",
    Key.rightIndexHome: "j",
    Key.rightMiddleHome: "k",
    Key.rightRingHome: "l",
    Key.rightLittleHome: ";",

    Key.rightOutsideHome: "\u{27}",
    Key.rightDoubleOutsideHomeISO_JIS_RightTripleOutsideUpperANSI: "\\",

    Key.leftOutsideLowerISO_LeftOutsideTopANSI_JIS: "`",

    Key.leftLittleLower: "z",
    Key.leftRingLower: "x",
    Key.leftMiddleLower: "c",
    Key.leftIndexLower: "v",
    Key.leftInsideLower: "b",

    Key.rightInsideLower: "n",
    Key.rightIndexLower: "m",
    Key.rightMiddleLower: ",",
    Key.rightRingLower: ".",
    Key.rightLittleLower: "/",
  ]

  /// ANSI uppercase.
  public static let ansiUppercase: [Key: StrictString] = autoUppercase(ansiLowercase)
    .mergedByOverwriting(from: [

      Key.leftLittleTop: "!",
      Key.leftRingTop: "@",
      Key.leftMiddleTop: "#",
      Key.leftIndexTop: "$",
      Key.leftInsideTop: "%",

      Key.rightInsideTop: "^",
      Key.rightIndexTop: "&",
      Key.rightMiddleTop: "*",
      Key.rightRingTop: "(",
      Key.rightLittleTop: ")",
      Key.rightOutsideTop: "_",
      Key.rightDoubleOutsideTop: "+",

      Key.rightOutsideUpper: "{",
      Key.rightDoubleOutsideUpper: "}",

      Key.rightLittleHome: ":",

      Key.rightOutsideHome: "\u{22}",
      Key.rightDoubleOutsideHomeISO_JIS_RightTripleOutsideUpperANSI: "|",

      Key.leftOutsideLowerISO_LeftOutsideTopANSI_JIS: "~",

      Key.rightMiddleLower: "<",
      Key.rightRingLower: ">",
      Key.rightLittleLower: "?",
    ])
}
