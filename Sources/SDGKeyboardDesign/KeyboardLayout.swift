/*
 KeyboardLayout.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2023 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import Foundation

import SDGLogic
import SDGMathematics
import SDGCollections
import SDGText
import SDGLocalization
import SDGXML

import SDGKeyboard

/// A keyboard layout.
public struct KeyboardLayout<L> where L: InputLocalization {

  // MARK: - Initialization

  /// Creates a keyboard layout description.
  ///
  /// - Parameters:
  ///     - name: The name of the keyboard layout.
  ///     - icon: An icon for the keyboard layout, or nil. This must be a local file URL pointing to an `.icns` file (which can be created by building an icon in an asset catalog with Xcode).
  ///     - layers: A dictionary with `Layer`s for keys and values that are each a dictionary that maps `Key`s to output strings (normal keys), dead key identifiers (dead keys) or `Symbol.key` (a symbol key).
  ///     - deadKeyLabels: Optional. A dictionary that maps each dead key identifier to a label for the dead key. It is recommended to use `DeadKey.defaultLabels` as a starting point instead of an empty dictionary.
  ///     - deadKeyMappings: Optional. A dictionary where the keys are the output of basic keys, and the values are a each a dictionary that maps dead key identifiers to the modified output of the basic key. It is recommended to use `DeadKey.defaultMappings` as a starting point instead of an empty dictionary.
  ///     - symbols: A dictionary that maps spelled‐out descriptions to the symbol they should produce. It is recommended to use `Symbol.defaultDictionary` as a starting point instead of an empty dictionary.
  ///     - uniqueIdentifier: A unique identifier. macOS requires certain scripts to have positive or negative identifiers, but this initializer will automatically flip the sign as necessary.
  ///     - script: A code for a script to use for applications that do not support Unicode.
  ///     - targetedLanguage: The *sole* targeted language, if there is only one.
  public init(
    name: UserFacing<StrictString, L>,
    icon: URL?,
    layers: [Layer: [Key: StrictString]],
    deadKeyLabels: [StrictString: StrictString] = DeadKey.defaultLabels,
    deadKeyMappings: [StrictString: [StrictString: StrictString]] = DeadKey.defaultMappings,
    symbols: [StrictString: StrictString] = Symbol.defaultDictionary,
    uniqueIdentifier: Int,
    script: OSXScriptCode,
    targetedLanguage: L?
  ) {

    self.name = name
    self.icon = icon
    self.layers = layers
    self.deadKeyLabels = deadKeyLabels
    self.deadKeyMappings = deadKeyMappings
    self.symbols = symbols

    let absoluteIdentifier = |uniqueIdentifier|
    if script == .none {
      self.uniqueIdentifier = −absoluteIdentifier
    } else {
      self.uniqueIdentifier = absoluteIdentifier
    }

    self.script = script
    self.targetedLanguage = targetedLanguage
  }

  // MARK: - Properties

  private let uniqueIdentifier: Int
  private let script: OSXScriptCode
  private let targetedLanguage: L?
  internal let name: UserFacing<StrictString, L>
  internal let icon: URL?
  private let layers: [Layer: [Key: StrictString]]
  private let deadKeyLabels: [StrictString: StrictString]
  private let deadKeyMappings: [StrictString: [StrictString: StrictString]]
  private let symbols: [StrictString: StrictString]

  internal var unlocalizedName: StrictString {
    return name.resolved(for: L.fallbackLocalization)
  }

  // MARK: - Resolution

  private func layerArrangements() -> [Layer: [Key: StrictString]] {
    var layerLayouts: [Layer: [Key: StrictString]] = [:]
    for layer in Layer.allCases {

      let overrides: [Key: StrictString]
      if let theOverrides = layers[layer] {
        overrides = theOverrides
      } else {
        switch layer {
        case .command:
          overrides = Arrangement.ansiLowercase
        case .shiftCommand:
          overrides = Arrangement.ansiUppercase
        default:
          overrides = [:]
        }
      }

      var result = Arrangement.root
      if let unshifted = layer.unshifted {
        result.mergeByOverwriting(from: autoUppercase(layerLayouts[unshifted]!))
      }
      result.mergeByOverwriting(from: overrides)

      layerLayouts[layer] = result
    }
    return layerLayouts
  }

  private func symbolsSpellable(
    by layers: [Layer: [Key: StrictString]]
  ) -> [StrictString: StrictString] {
    let available = Set(layers.lazy.flatMap({ $0.value.lazy.map({ $0.value }) }))
    var result = symbols
    for key in Array(symbols.keys) where ¬key.allSatisfy({ "\($0)" ∈ available }) {
      result[key] = nil
    }
    return result
  }

  // MARK: - Key Layout File

  private func keyLayoutDTD() -> XML.DTD {
    return .system("file://localhost/System/Library/DTDs/KeyboardLayout.dtd")
  }

  private var keyLayoutModifierMapIdentifier: XML.AttributeValue {
    return "modifierMap"
  }
  private var keyLayoutANSIMapSet: StrictString {
    return "mapSet"
  }
  private var keyLayoutJISMapSet: StrictString {
    return keyLayoutANSIMapSet
  }

  private func keyLayoutLayout(range: ClosedRange<Int>, mapSet: StrictString) -> XML.Content {
    return .element(
      XML.Element(
        name: "layout",
        attributes: [
          "first": XML.AttributeValue(text: range.lowerBound.inUninteruptedDigits()),
          "last": XML.AttributeValue(text: range.upperBound.inUninteruptedDigits()),
          "modifiers": keyLayoutModifierMapIdentifier,
          "mapSet": XML.AttributeValue(text: mapSet),
        ]
      )
    )
  }

  private func keyLayoutLayouts() -> XML.Element {
    return XML.Element(
      name: "layouts",
      content: [
        .characterData("\n    "),
        keyLayoutLayout(range: 0...17, mapSet: keyLayoutANSIMapSet),
        .characterData("\n    "),
        keyLayoutLayout(range: 18...18, mapSet: keyLayoutJISMapSet),
        .characterData("\n    "),
        keyLayoutLayout(range: 21...23, mapSet: keyLayoutJISMapSet),
        .characterData("\n    "),
        keyLayoutLayout(range: 30...30, mapSet: keyLayoutJISMapSet),
        .characterData("\n    "),
        keyLayoutLayout(range: 33...33, mapSet: keyLayoutJISMapSet),
        .characterData("\n    "),
        keyLayoutLayout(range: 36...36, mapSet: keyLayoutJISMapSet),
        .characterData("\n    "),
        keyLayoutLayout(range: 194...194, mapSet: keyLayoutJISMapSet),
        .characterData("\n    "),
        keyLayoutLayout(range: 197...197, mapSet: keyLayoutJISMapSet),
        .characterData("\n    "),
        keyLayoutLayout(range: 200...201, mapSet: keyLayoutJISMapSet),
        .characterData("\n    "),
        keyLayoutLayout(range: 206...207, mapSet: keyLayoutJISMapSet),
        .characterData("\n  "),
      ]
    )
  }

  private func keyLayoutKeyMapSelect(
    keyMap: Layer,
    keys: String,
    otherKeys: String? = nil
  ) -> XML.Content {
    var content: [XML.Content] = [
      .characterData("\n      "),
      .element(
        XML.Element(
          name: "modifier",
          attributes: ["keys": XML.AttributeValue(text: StrictString(keys))]
        )
      ),
    ]
    if let other = otherKeys {
      content.append(contentsOf: [
        .characterData("\n      "),
        .element(
          XML.Element(
            name: "modifier",
            attributes: ["keys": XML.AttributeValue(text: StrictString(other))]
          )
        ),
      ])
    }
    content.append(.characterData("\n    "))
    return .element(
      XML.Element(
        name: "keyMapSelect",
        attributes: ["mapIndex": XML.AttributeValue(text: StrictString(keyMap.index))],
        content: content
      )
    )
  }

  private func keyLayoutModifierMap() -> XML.Element {
    return XML.Element(
      name: "modifierMap",
      attributes: [
        "id": keyLayoutModifierMapIdentifier,
        "defaultIndex": XML.AttributeValue(text: Layer.command.index),
      ],
      content: [
        .characterData("\n    "),
        keyLayoutKeyMapSelect(keyMap: .noModifiers, keys: ""),
        .characterData("\n    "),
        keyLayoutKeyMapSelect(keyMap: .shift, keys: "anyShift"),
        .characterData("\n    "),
        keyLayoutKeyMapSelect(keyMap: .option, keys: "anyOption"),
        .characterData("\n    "),
        keyLayoutKeyMapSelect(keyMap: .shiftOption, keys: "anyOption anyShift"),
        .characterData("\n    "),
        keyLayoutKeyMapSelect(keyMap: .capsLock, keys: "caps"),
        .characterData("\n    "),
        keyLayoutKeyMapSelect(keyMap: .capsLockShift, keys: "caps anyShift"),
        .characterData("\n    "),
        keyLayoutKeyMapSelect(keyMap: .capsLockOption, keys: "caps anyOption"),
        .characterData("\n    "),
        keyLayoutKeyMapSelect(keyMap: .capsLockShiftOption, keys: "caps anyOption anyShift"),
        .characterData("\n    "),
        keyLayoutKeyMapSelect(
          keyMap: .command,
          keys: "command anyControl? anyOption? caps?",
          otherKeys: "anyControl anyOption? caps?"
        ),
        .characterData("\n    "),
        keyLayoutKeyMapSelect(
          keyMap: .shiftCommand,
          keys: "command anyControl? anyOption? caps? anyShift",
          otherKeys: "anyControl anyOption? caps? anyShift"
        ),
        .characterData("\n  "),
      ]
    )
  }

  private func keyLayoutKey(_ key: Key) -> XML.Element {
    return XML.Element(
      name: "key",
      attributes: ["code": XML.AttributeValue(text: key.coreGraphicsCode.inUninteruptedDigits())]
    )
  }

  private func keyLayoutOutputKey(_ virtualKey: Key, output: StrictString) -> XML.Content {
    var theKey = keyLayoutKey(virtualKey)
    theKey.attributes["output"] = XML.AttributeValue(text: output)
    return .element(theKey)
  }

  private func mangle(action string: StrictString) -> StrictString {
    var encoded = StrictString(
      String(string).addingPercentEncoding(
        withAllowedCharacters: CharacterSet(
          charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
        )
      )!
    )
    encoded.replaceMatches(for: StrictString("%"), with: StrictString("_"))
    return encoded
  }

  private func keyLayoutActionKey(_ virtualKey: Key, action: StrictString) -> XML.Content {
    var theKey = keyLayoutKey(virtualKey)
    theKey.attributes["action"] = XML.AttributeValue(text: mangle(action: action))
    return .element(theKey)
  }

  private func keyLayoutKeyMap(
    layer: Layer,
    arrangement: [Key: StrictString],
    deadKeyAndSymbolMappings: [StrictString: [StrictString: StrictString]]
  ) -> XML.Element {
    var content: [XML.Content] = []
    content.reserveCapacity(arrangement.count)
    for virtualKey in arrangement.keys.sorted() {
      content.append(.characterData("\n      "))
      let output = arrangement[virtualKey]!
      if let _ = deadKeyLabels[output] {
        content.append(keyLayoutActionKey(virtualKey, action: output))
      } else if let _ = deadKeyAndSymbolMappings[output] {
        content.append(keyLayoutActionKey(virtualKey, action: output))
      } else {
        content.append(keyLayoutOutputKey(virtualKey, output: output))
      }
    }
    content.append(.characterData("\n    "))
    return XML.Element(
      name: "keyMap",
      attributes: ["index": XML.AttributeValue(text: layer.index)],
      content: content
    )
  }

  private func keyLayoutKeyMapSet(
    _ identifier: StrictString,
    layerLayouts: [Layer: [Key: StrictString]],
    deadKeyAndSymbolMappings: [StrictString: [StrictString: StrictString]]
  ) -> XML.Element {
    var content: [XML.Content] = []
    content.reserveCapacity(layerLayouts.count)
    for layer in layerLayouts.keys.sorted() {
      content.append(.characterData("\n    "))
      let arrangement = layerLayouts[layer]!
      let layout = keyLayoutKeyMap(
        layer: layer,
        arrangement: arrangement,
        deadKeyAndSymbolMappings: deadKeyAndSymbolMappings
      )
      content.append(.element(layout))
    }
    content.append(.characterData("\n  "))
    return XML.Element(
      name: "keyMapSet",
      attributes: ["id": XML.AttributeValue(text: identifier)],
      content: content
    )
  }

  private func keyLayoutWhen() -> XML.Element {
    return XML.Element(name: "when")
  }

  private func keyLayoutActions(
    deadKeyAndSymbolMappings: [StrictString: [StrictString: StrictString]]
  ) -> XML.Element {
    var content: [XML.Content] = []

    content.reserveCapacity(deadKeyLabels.count)
    for dead in deadKeyLabels.keys.sorted() {
      var next = keyLayoutWhen()
      next.attributes["state"] = "none"
      next.attributes["next"] = XML.AttributeValue(text: mangle(action: dead))
      content.append(contentsOf: [
        .characterData("\n    "),
        .element(
          XML.Element(
            name: "action",
            attributes: ["id": XML.AttributeValue(text: mangle(action: dead))],
            content: [
              .characterData("\n      "),
              .element(next),
              .characterData("\n    "),
            ]
          )
        ),
      ])
    }

    content.reserveCapacity(content.count + deadKeyAndSymbolMappings.count × 2)
    for base in deadKeyAndSymbolMappings.keys.sorted() {
      let mapping = deadKeyAndSymbolMappings[base]!
      var actionContent: [XML.Content] = []
      actionContent.reserveCapacity(mapping.count + 1)

      var normal = keyLayoutWhen()
      normal.attributes["state"] = "none"
      if base == "¤" {
        normal.attributes["next"] = XML.AttributeValue(text: mangle(action: base))
      } else {
        normal.attributes["output"] = XML.AttributeValue(text: base)
      }
      actionContent.append(contentsOf: [
        .characterData("\n      "),
        .element(normal),
      ])

      for state in mapping.keys.sorted() {
        let result = mapping[state]!
        var rule = keyLayoutWhen()
        rule.attributes["state"] = XML.AttributeValue(text: mangle(action: state))
        if result.hasPrefix("¤".unicodeScalars.literal()) {
          rule.attributes["next"] = XML.AttributeValue(text: mangle(action: result))
          // Pending Symbol state
        } else {
          // Output
          rule.attributes["output"] = XML.AttributeValue(text: result)
        }
        actionContent.append(contentsOf: [
          .characterData("\n      "),
          .element(rule),
        ])
      }

      actionContent.append(.characterData("\n    "))

      content.append(contentsOf: [
        .characterData("\n    "),
        .element(
          XML.Element(
            name: "action",
            attributes: ["id": XML.AttributeValue(text: mangle(action: base))],
            content: actionContent
          )
        ),
      ])
    }
    content.append(.characterData("\n  "))

    return XML.Element(name: "actions", content: content)
  }

  private func keyLayoutTerminators(
    symbolMapping: [StrictString: [StrictString: StrictString]]
  ) -> XML.Element {
    var content: [XML.Content] = []
    content.reserveCapacity(deadKeyLabels.count)
    for dead in deadKeyLabels.keys.sorted() {
      let terminator = deadKeyLabels[dead]!
      var rule = keyLayoutWhen()
      rule.attributes["state"] = XML.AttributeValue(text: mangle(action: dead))
      rule.attributes["output"] = XML.AttributeValue(text: terminator)
      content.append(contentsOf: [
        .characterData("\n    "),
        .element(rule),
      ])
    }
    let states = Symbol.states(from: symbolMapping)
    content.reserveCapacity(content.count + states.count)
    for state in Symbol.states(from: symbolMapping) {
      var rule = keyLayoutWhen()
      rule.attributes["state"] = XML.AttributeValue(text: mangle(action: state))
      rule.attributes["output"] = XML.AttributeValue(text: state)
      content.append(contentsOf: [
        .characterData("\n    "),
        .element(rule),
      ])
    }
    content.append(.characterData("\n  "))
    return XML.Element(name: "terminators", content: content)
  }

  private func keyLayoutKeyboard() -> XML.Element {
    let layerLayouts = layerArrangements()
    let symbolMapping = Symbol.mapping(from: symbolsSpellable(by: layerLayouts))
    let deadKeyAndSymbolMappings = DeadKey.assimilate(
      symbols: symbolMapping,
      intoDeadKeys: deadKeyMappings
    )

    return XML.Element(
      name: "keyboard",
      attributes: [
        "group": XML.AttributeValue(text: StrictString(script.rawValue)),
        "id": XML.AttributeValue(text: uniqueIdentifier.inUninteruptedDigits()),
        "name": XML.AttributeValue(text: unlocalizedName),
      ],
      content: [
        .characterData("\n  "),
        .element(keyLayoutLayouts()),
        .characterData("\n  "),
        .element(keyLayoutModifierMap()),
        .characterData("\n  "),
        .element(
          keyLayoutKeyMapSet(
            keyLayoutANSIMapSet,
            layerLayouts: layerLayouts,
            deadKeyAndSymbolMappings: deadKeyAndSymbolMappings
          )
        ),
        .characterData("\n  "),
        .element(keyLayoutActions(deadKeyAndSymbolMappings: deadKeyAndSymbolMappings)),
        .characterData("\n  "),
        .element(keyLayoutTerminators(symbolMapping: symbolMapping)),
        .characterData("\n"),
      ]
    )
  }

  private func keyLayoutXML() -> XML.Document {
    return XML.Document(dtd: keyLayoutDTD(), rootElement: keyLayoutKeyboard())
  }

  /// Generates a key layout file.
  ///
  /// For information about this file, see  Apple’s [Technical Note 2056](https://developer.apple.com/library/archive/technotes/tn2056/_index.html).
  ///
  /// If macOS refuses to load the file, it can be debugged using the `klcompiler` tool in the [Apple Font Tool Suite](https://developer.apple.com/fonts/).
  public func keyLayoutFile() -> StrictString {
    let xml = keyLayoutXML()
    var string = xml.source()

    string.replaceMatches(for: "\u{1}".scalars.literal(), with: "&#x0001;".scalars)
    string.replaceMatches(for: "\u{3}".scalars.literal(), with: "&#x0003;".scalars)
    string.replaceMatches(for: "\u{4}".scalars.literal(), with: "&#x0004;".scalars)
    string.replaceMatches(for: "\u{5}".scalars.literal(), with: "&#x0005;".scalars)
    string.replaceMatches(for: "\u{8}".scalars.literal(), with: "&#x0008;".scalars)
    string.replaceMatches(for: "\u{9}".scalars.literal(), with: "&#x0009;".scalars)
    string.replaceMatches(for: "\u{B}".scalars.literal(), with: "&#x000B;".scalars)
    string.replaceMatches(for: "\u{C}".scalars.literal(), with: "&#x000C;".scalars)
    string.replaceMatches(for: "\u{D}".scalars.literal(), with: "&#x000D;".scalars)
    string.replaceMatches(for: "\u{10}".scalars.literal(), with: "&#x0010;".scalars)
    string.replaceMatches(for: "\u{1B}".scalars.literal(), with: "&#x001B;".scalars)
    string.replaceMatches(for: "\u{1C}".scalars.literal(), with: "&#x001C;".scalars)
    string.replaceMatches(for: "\u{1D}".scalars.literal(), with: "&#x001D;".scalars)
    string.replaceMatches(for: "\u{1E}".scalars.literal(), with: "&#x001E;".scalars)
    string.replaceMatches(for: "\u{1F}".scalars.literal(), with: "&#x001F;".scalars)
    string.replaceMatches(for: "\u{27}".scalars.literal(), with: "&#x0027;".scalars)
    string.replaceMatches(for: "\u{7F}".scalars.literal(), with: "&#x007F;".scalars)

    // The macOS XML parser has an intermittent bug involving non‐BMP scalars.
    string.scalars.mutateMatches(for: ConditionalPattern({ $0.value ≥ 0x10000 })) { match in
      return "&#x\(match.contents.first!.hexadecimalCode);".scalars
    }

    return StrictString(string)
  }

  // MARK: - macOS Keyboard Layout Bundle

  internal func macOSKeyboardLayoutBundleInfoPlistKeyLayoutInfo() -> [String: String] {
    var result: [String: String] = [:]
    result["TISIntendedLanguage"] = targetedLanguage?.code
    return result
  }
}
