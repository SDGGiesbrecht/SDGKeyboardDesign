/*
 ReadMeExampleTests.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2021 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import Foundation

import SDGText
import SDGLocalization
import SDGKeyboardDesign

import SDGXCTestUtilities

final class ReadMeExampleTests: TestCase {

  func testReadMeExample() throws {
    #if !os(Windows)  // Relative paths invalid after cross‐compilation out of WSL.
      #if !os(Android)  // Relative paths invalid after copying to the emulator.
        #if !PLATFORM_LACKS_FOUNDATION_NS_HOME_DIRECTORY

          // @example(readMe)
          enum ExampleLocalization: String, InputLocalization {
            // This is the list of localizations to provide metadata for.
            case englishCanada = "en\u{2D}CA"
            case françaisCanada = "fr\u{2D}CA"
            // This localization will be used when none match the user’s preferences.
            static let fallbackLocalization = ExampleLocalization.englishCanada
          }

          let exampleLayout = KeyboardLayout<ExampleLocalization>(
            name: UserFacing<StrictString, ExampleLocalization>({ localization in
              switch localization {
              // These are the names of the keyboard layout in each localization.
              case .englishCanada:
                return "Example Keyboard"
              case .françaisCanada:
                return "Clavier exemple"
              }
            }),
            // This URL points to a local “.icns” file to use as the icon.
            icon: URL(fileURLWithPath: #filePath)  // Starts at this file.
              .deletingLastPathComponent()  // Backs out to the directory.
              .deletingLastPathComponent()  // Backs out another directory.
              .appendingPathComponent("Test Specifications")  // Enters a directory.
              .appendingPathComponent("MockIcon.icns"),  // Specifies the file.
            layers: [
              // These are the character arrangements.
              // (Keys can be safely omitted, and the order doesn’t matter.)
              .noModifiers: [
                .leftOutsideTopISO: "१",

                .leftLittleTop: "1",
                .leftRingTop: "2",
                .leftMiddleTop: "3",
                .leftIndexTop: "4",
                .leftInsideTop: "5",

                .rightInsideTop: "٥",
                .rightIndexTop: "٤",
                .rightMiddleTop: "٣",
                .rightRingTop: "٢",
                .rightLittleTop: "١",

                .rightOutsideTop: "一",
                .rightDoubleOutsideTop: "二",

                .leftLittleUpper: "α",
                .leftRingUpper: "β",
                .leftMiddleUpper: "γ",
                .leftIndexUpper: "δ",
                .leftInsideUpper: "ε",

                .rightInsideUpper: "ה",
                .rightIndexUpper: "ד",
                .rightMiddleUpper: "ג",
                .rightRingUpper: "ב",
                .rightLittleUpper: "א",

                .rightOutsideUpper: "あ",
                .rightDoubleOutsideUpper: "い",

                .leftLittleHome: "a",
                .leftRingHome: "b",
                .leftMiddleHome: "c",
                .leftIndexHome: "d",
                .leftInsideHome: "e",

                .rightInsideHome: "乙",
                .rightIndexHome: "丿",
                .rightMiddleHome: "丶",
                .rightRingHome: "丨",
                .rightLittleHome: "一",

                .rightOutsideHome: "ᄀ",
                .rightDoubleOutsideHomeISO_JIS_RightTripleOutsideUpperANSI: "ᄁ",

                .leftOutsideLowerISO_LeftOutsideTopANSI_JIS: "क",

                .leftLittleLower: "а",
                .leftRingLower: "б",
                .leftMiddleLower: "в",
                .leftIndexLower: "г",
                .leftInsideLower: "д",

                .rightInsideLower: "ر",
                .rightIndexLower: "د",
                .rightMiddleLower: "ج",
                .rightRingLower: "ب",
                .rightLittleLower: "ا",
              ],
              .shift: [
                // In many cases, uppercase characters will be inferred automatically.
                // But where it is ambiguous, or there is none, the shift layer can done manually.
                // Explicit entries will override automated values.
                .leftIndexHome: "I",
                .rightIndexHome: "İ",
              ],
              .option: [
                // These are the characters produced when option (⌥) is pressed.

                // Characters can be specified either directly...
                .leftIndexUpper: ".",  // ← A full stop.
                // ...or with their Unicode hexadecimal identifier:
                .leftInsideUpper: "\u{002E}",  // ← Also a full stop.

                // Unicode combining characters are better than dead keys...
                // (These are pressed after the character they modify.)
                .leftLittleHome: "\u{300}",  // ◌́ (acute)
                .leftRingHome: "\u{301}",  // ◌̀ (grave)
                .leftMiddleHome: "\u{302}",  // ◌̂ (circumflex)
                .leftIndexHome: "\u{303}",  // ◌̃ (tilde)
                .leftInsideHome: "\u{304}",  // ◌̄ (macron)

                // ...but dead keys are also possible when Unicode provides no combining character.
                // (These are pressed before the character they modify.)
                // Several common dead keys are provided.
                .rightInsideHome: DeadKey.stroke,
                .rightIndexHome: DeadKey.hook,
                .rightMiddleHome: DeadKey.descender,
                .rightRingHome: "Inversion",  // Custom. See below.

                // The symbol key allows inserting symbols by spelling their names.
                .rightDoubleOutsideHomeISO_JIS_RightTripleOutsideUpperANSI: Symbol.key,
              ],
              // More layers are available:
              .shiftOption: [
                .leftIndexHome: "⇧⌥"
              ],
              .capsLock: [
                .leftIndexHome: "⇪"
              ],
              .capsLockShift: [
                .leftIndexHome: "⇪⇧"
              ],
              .capsLockOption: [
                .leftIndexHome: "⇪⌥"
              ],
              .capsLockShiftOption: [
                .leftIndexHome: "⇪⇧⌥"
              ],
              // Beware that rearranging the command layers affects hotkeys!
              // (If omitted, they will be automatically filled in according to ANSII.)
              .command: [
                .leftIndexHome: "⌘"
              ],
              .shiftCommand: [
                .leftIndexHome: "⇧⌘"
              ],
            ],
            deadKeyLabels: DeadKey.defaultLabels.mergedByOverwriting(from: [
              // This specifies a label for the custom dead key above.
              "Inversion": "⟲"
            ]),
            deadKeyMappings: DeadKey.defaultMappings.mergedByOverwriting(from: [
              // This specifies the mapping for the custom dead key above.
              "Inversion": [
                "a": "ɐ",
                "c": "ɔ",
                "e": "ə",
              ]
            ]),
            symbols: Symbol.defaultDictionary.mergedByOverwriting(from: [
              // This adds symbols to the default symbol key list (or overrides them).
              // To use the symbol key, press it once, then start typing the name of the symbol.
              // You won’t usually have to type the whole name.
              // It will be replaced with the symbol as soon as it is unambiguous.
              "euros": "€",
              "dollars": "$",
              "roubles": "₽",
              "pounds": "£",
            ]),
            // This must be a unique identifier for the layout.
            uniqueIdentifier: 1_234_567,
            // This is the encoding that will be used in non‐Unicode applications.
            script: .latinWestern,
            // Optional. This requests that the operating system associate the layout with a particular language.
            targetedLanguage: .englishCanada
          )

          let exampleBundle = KeyboardLayoutBundle(
            name: UserFacing<StrictString, ExampleLocalization>({ localization in
              switch localization {
              // These are the names of the bundle in each localization.
              case .englishCanada:
                return "Example Keyboards"
              case .françaisCanada:
                return "Claviers exemples"
              }
            }),
            // A bundle can contain multiple layouts.
            // (But this only includes the layout above.)
            layouts: [exampleLayout],
            copyright: UserFacing<StrictString, ExampleLocalization>({ localization in
              switch localization {
              // These are the copyright notices in each localization.
              case .englishCanada:
                return "©0000 John Doe"
              case .françaisCanada:
                return "©0000 Jean Dupont"
              }
            }),
            // This is a unique identifier for the bundle.
            // (Apple recommends using reversed domain name notation.)
            bundleIdentifier: "tld.domain.example"
          )

          // This specifies the directory where the exported bundle should be saved.
          let exportURL = URL(fileURLWithPath: NSHomeDirectory())
            .appendingPathComponent("Downloads")
          // This exports the layout bundle.
          try exampleBundle.generate(in: exportURL)
          // @endExample

          if (try exportURL.appendingPathComponent("Example Keyboards.bundle")
            .checkResourceIsReachable()) == true
          {
            try? FileManager.default.removeItem(at: exportURL)
          }
        #endif
      #endif
    #endif
  }
}
