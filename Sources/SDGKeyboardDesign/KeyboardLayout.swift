/*
 KeyboardLayout.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import Foundation
#if canImport(FoundationXML)
  import FoundationXML
#endif

import SDGMathematics
import SDGText
import SDGLocalization
import SDGKeyboard

import SDGKeyboardDesignXMLShims

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
  ///     - uniqueIdentifier: A unique identifier.
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
    self.uniqueIdentifier = uniqueIdentifier
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

  private func layerArrangements(
    deadKeyAndSymbolMappings: [StrictString: [StrictString: StrictString]]
  ) -> [Layer: [Key: StrictString]] {
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

  // MARK: - Key Layout File

  private func keyLayoutDTD() -> XMLDTD {
    let dtd = XMLDTD()
    dtd.name = "keyboard"
    dtd.systemID = "file://localhost/System/Library/DTDs/KeyboardLayout.dtd"
    return dtd
  }

  private var keyLayoutModifierMapIdentifier: String {
    return "modifierMap"
  }
  private var keyLayoutANSIMapSet: String {
    return "mapSet"
  }
  private var keyLayoutJISMapSet: String {
    return keyLayoutANSIMapSet
  }

  private func keyLayoutLayout(range: ClosedRange<Int>, mapSet: String) -> XMLElement {
    let theLayout = XMLElement(name: "layout")
    theLayout.addAttribute(name: "first", value: "\(range.lowerBound)")
    theLayout.addAttribute(name: "last", value: "\(range.upperBound)")
    theLayout.addAttribute(name: "modifiers", value: keyLayoutModifierMapIdentifier)
    theLayout.addAttribute(name: "mapSet", value: mapSet)
    return theLayout
  }

  private func keyLayoutLayouts() -> XMLElement {
    let layouts = XMLElement(name: "layouts")
    layouts.addChild(keyLayoutLayout(range: 0...17, mapSet: keyLayoutANSIMapSet))
    layouts.addChild(keyLayoutLayout(range: 18...18, mapSet: keyLayoutJISMapSet))
    layouts.addChild(keyLayoutLayout(range: 21...23, mapSet: keyLayoutJISMapSet))
    layouts.addChild(keyLayoutLayout(range: 30...30, mapSet: keyLayoutJISMapSet))
    layouts.addChild(keyLayoutLayout(range: 33...33, mapSet: keyLayoutJISMapSet))
    layouts.addChild(keyLayoutLayout(range: 36...36, mapSet: keyLayoutJISMapSet))
    layouts.addChild(keyLayoutLayout(range: 194...194, mapSet: keyLayoutJISMapSet))
    layouts.addChild(keyLayoutLayout(range: 197...197, mapSet: keyLayoutJISMapSet))
    layouts.addChild(keyLayoutLayout(range: 200...201, mapSet: keyLayoutJISMapSet))
    layouts.addChild(keyLayoutLayout(range: 206...207, mapSet: keyLayoutJISMapSet))
    return layouts
  }

  private func keyLayoutKeyMapSelect(keyMap: Layer, keys: String, otherKeys: String? = nil)
    -> XMLElement
  {
    let theKeyMapSelect = XMLElement(name: "keyMapSelect")
    theKeyMapSelect.addAttribute(name: "mapIndex", value: "\(keyMap.index)")

    let modifierSet = XMLElement(name: "modifier")
    theKeyMapSelect.addChild(modifierSet)
    modifierSet.addAttribute(name: "keys", value: keys)

    if let other = otherKeys {
      let otherModifiers = XMLElement(name: "modifier")
      theKeyMapSelect.addChild(otherModifiers)
      otherModifiers.addAttribute(name: "keys", value: other)
    }

    return theKeyMapSelect
  }

  private func keyLayoutModifierMap() -> XMLElement {
    let modifierMap = XMLElement(name: "modifierMap")
    modifierMap.addAttribute(name: "id", value: keyLayoutModifierMapIdentifier)
    modifierMap.addAttribute(name: "defaultIndex", value: "\(Layer.command.index)")

    modifierMap.addChild(keyLayoutKeyMapSelect(keyMap: .noModifiers, keys: ""))
    modifierMap.addChild(keyLayoutKeyMapSelect(keyMap: .shift, keys: "anyShift"))
    modifierMap.addChild(keyLayoutKeyMapSelect(keyMap: .option, keys: "anyOption"))
    modifierMap.addChild(keyLayoutKeyMapSelect(keyMap: .shiftOption, keys: "anyOption anyShift"))
    modifierMap.addChild(keyLayoutKeyMapSelect(keyMap: .capsLock, keys: "caps"))
    modifierMap.addChild(keyLayoutKeyMapSelect(keyMap: .capsLockShift, keys: "caps anyShift"))
    modifierMap.addChild(keyLayoutKeyMapSelect(keyMap: .capsLockOption, keys: "caps anyOption"))
    modifierMap.addChild(
      keyLayoutKeyMapSelect(keyMap: .capsLockShiftOption, keys: "caps anyOption anyShift")
    )
    modifierMap.addChild(
      keyLayoutKeyMapSelect(
        keyMap: .command,
        keys: "command anyControl? anyOption? caps?",
        otherKeys: "anyControl anyOption? caps?"
      )
    )
    modifierMap.addChild(
      keyLayoutKeyMapSelect(
        keyMap: .shiftCommand,
        keys: "command anyControl? anyOption? caps? anyShift",
        otherKeys: "anyControl anyOption? caps? anyShift"
      )
    )
    return modifierMap
  }

  private func keyLayoutKey(_ key: Key) -> XMLElement {
    let theKey = XMLElement(name: "key")
    theKey.addAttribute(name: "code", value: "\(key.coreGraphicsCode)")
    return theKey
  }

  private func keyLayoutOutputKey(_ virtualKey: Key, output: StrictString) -> XMLElement {
    let theKey = keyLayoutKey(virtualKey)
    theKey.addAttribute(name: "output", value: String(output))
    return theKey
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

  private func keyLayoutActionKey(_ virtualKey: Key, action: StrictString) -> XMLElement {
    let theKey = keyLayoutKey(virtualKey)
    theKey.addAttribute(name: "action", value: String(mangle(action: action)))
    return theKey
  }

  private func keyLayoutKeyMap(
    layer: Layer,
    arrangement: [Key: StrictString],
    deadKeyAndSymbolMappings: [StrictString: [StrictString: StrictString]]
  ) -> XMLElement {

    let theKeyMap = XMLElement(name: "keyMap")
    theKeyMap.addAttribute(name: "index", value: "\(layer.index)")

    for virtualKey in arrangement.keys.sorted() {
      let output = arrangement[virtualKey]!
      if let _ = deadKeyLabels[output] {
        theKeyMap.addChild(keyLayoutActionKey(virtualKey, action: output))
      } else if let _ = deadKeyAndSymbolMappings[output] {
        theKeyMap.addChild(keyLayoutActionKey(virtualKey, action: output))
      } else {
        theKeyMap.addChild(keyLayoutOutputKey(virtualKey, output: output))
      }
    }

    return theKeyMap
  }

  private func keyLayoutKeyMapSet(
    _ identifier: String,
    deadKeyAndSymbolMappings: [StrictString: [StrictString: StrictString]]
  ) -> XMLElement {

    let theKeyMapSet = XMLElement(name: "keyMapSet")
    theKeyMapSet.addAttribute(name: "id", value: identifier)

    let layerLayouts = layerArrangements(deadKeyAndSymbolMappings: deadKeyAndSymbolMappings)
    for layer in layerLayouts.keys.sorted() {
      let arrangement = layerLayouts[layer]!
      let layout = keyLayoutKeyMap(
        layer: layer,
        arrangement: arrangement,
        deadKeyAndSymbolMappings: deadKeyAndSymbolMappings
      )
      theKeyMapSet.addChild(layout)
    }

    return theKeyMapSet
  }

  private func keyLayoutWhen() -> XMLElement {
    return XMLElement(name: "when")
  }

  private func keyLayoutActions(
    deadKeyAndSymbolMappings: [StrictString: [StrictString: StrictString]]
  ) -> XMLElement {

    let actions = XMLElement(name: "actions")

    for dead in deadKeyLabels.keys.sorted() {
      let action = XMLElement(name: "action")
      actions.addChild(action)
      action.addAttribute(name: "id", value: String(mangle(action: dead)))

      let next = keyLayoutWhen()
      action.addChild(next)
      next.addAttribute(name: "state", value: "none")
      next.addAttribute(name: "next", value: String(dead))
    }

    for base in deadKeyAndSymbolMappings.keys.sorted() {
      let mapping = deadKeyAndSymbolMappings[base]!
      let action = XMLElement(name: "action")
      actions.addChild(action)
      action.addAttribute(name: "id", value: String(mangle(action: base)))

      let normal = keyLayoutWhen()
      action.addChild(normal)
      normal.addAttribute(name: "state", value: "none")
      if base == "¤" {
        normal.addAttribute(name: "next", value: String(mangle(action: base)))
      } else {
        normal.addAttribute(name: "output", value: String(base))
      }

      for state in mapping.keys.sorted() {
        let result = mapping[state]!
        let rule = keyLayoutWhen()
        action.addChild(rule)
        rule.addAttribute(name: "state", value: String(mangle(action: state)))
        if result.hasPrefix("¤".unicodeScalars) {
          rule.addAttribute(name: "next", value: String(mangle(action: result)))
          // Pending Symbol state
        } else {
          // Output
          rule.addAttribute(name: "output", value: String(result))
        }
      }
    }
    return actions
  }

  private func keyLayoutTerminators(symbolMapping: [StrictString: [StrictString: StrictString]])
    -> XMLElement
  {
    let terminators = XMLElement(name: "terminators")
    for dead in deadKeyLabels.keys.sorted() {
      let terminator = deadKeyLabels[dead]!
      let rule = keyLayoutWhen()
      rule.addAttribute(name: "state", value: String(mangle(action: dead)))
      rule.addAttribute(name: "output", value: String(terminator))
      terminators.addChild(rule)
    }
    for state in Symbol.states(from: symbolMapping) {
      let rule = keyLayoutWhen()
      rule.addAttribute(name: "state", value: String(mangle(action: state)))
      rule.addAttribute(name: "output", value: String(state))
      terminators.addChild(rule)
    }
    return terminators
  }

  private func keyLayoutKeyboard() -> XMLElement {
    let symbolMapping = Symbol.mapping(from: symbols)
    let deadKeyAndSymbolMappings = DeadKey.assimilate(
      symbols: symbolMapping,
      intoDeadKeys: deadKeyMappings
    )

    let keyboard = XMLElement(name: "keyboard")
    keyboard.addAttribute(name: "group", value: script.rawValue)
    keyboard.addAttribute(name: "id", value: "\(uniqueIdentifier)")
    keyboard.addAttribute(name: "name", value: String(unlocalizedName))
    keyboard.addChild(keyLayoutLayouts())
    keyboard.addChild(keyLayoutModifierMap())
    keyboard.addChild(
      keyLayoutKeyMapSet(
        keyLayoutANSIMapSet,
        deadKeyAndSymbolMappings: deadKeyAndSymbolMappings
      )
    )
    keyboard.addChild(keyLayoutActions(deadKeyAndSymbolMappings: deadKeyAndSymbolMappings))
    keyboard.addChild(keyLayoutTerminators(symbolMapping: symbolMapping))
    return keyboard
  }

  internal func keyLayoutXML() -> XMLDocument {
    let document = XMLDocument(rootElement: keyLayoutKeyboard())
    document.version = "1.0"
    document.characterEncoding = "UTF\u{2D}8"
    document.dtd = keyLayoutDTD()
    return document
  }

  /// Generates a key layout file.
  public func keyLayoutFile() -> StrictString {
    let xml = keyLayoutXML()
    let data = xml.xmlData(options: [.nodePrettyPrint, .nodeCompactEmptyElement])

    var string = String(data: data, encoding: .utf8)!
    string = string.replacingOccurrences(of: "\u{22}\u{1}\u{22}", with: "\u{22}&#x0001;\u{22}")
    string = string.replacingOccurrences(of: "\u{22}\u{3}\u{22}", with: "\u{22}&#x0003;\u{22}")
    string = string.replacingOccurrences(of: "\u{22}\u{4}\u{22}", with: "\u{22}&#x0004;\u{22}")
    string = string.replacingOccurrences(of: "\u{22}\u{5}\u{22}", with: "\u{22}&#x0005;\u{22}")
    string = string.replacingOccurrences(of: "\u{22}\u{8}\u{22}", with: "\u{22}&#x0008;\u{22}")
    string = string.replacingOccurrences(of: "\u{22}\u{9}\u{22}", with: "\u{22}&#x0009;\u{22}")
    string = string.replacingOccurrences(of: "\u{22}\u{B}\u{22}", with: "\u{22}&#x000B;\u{22}")
    string = string.replacingOccurrences(of: "\u{22}\u{C}\u{22}", with: "\u{22}&#x000C;\u{22}")
    string = string.replacingOccurrences(of: "\u{22}\u{D}\u{22}", with: "\u{22}&#x000D;\u{22}")
    string = string.replacingOccurrences(of: "\u{22}\u{10}\u{22}", with: "\u{22}&#x0010;\u{22}")
    string = string.replacingOccurrences(of: "\u{22}\u{1B}\u{22}", with: "\u{22}&#x001B;\u{22}")
    string = string.replacingOccurrences(of: "\u{22}\u{1C}\u{22}", with: "\u{22}&#x001C;\u{22}")
    string = string.replacingOccurrences(of: "\u{22}\u{1D}\u{22}", with: "\u{22}&#x001D;\u{22}")
    string = string.replacingOccurrences(of: "\u{22}\u{1E}\u{22}", with: "\u{22}&#x001E;\u{22}")
    string = string.replacingOccurrences(of: "\u{22}\u{1F}\u{22}", with: "\u{22}&#x001F;\u{22}")
    string = string.replacingOccurrences(of: "\u{22}\u{27}\u{22}", with: "\u{22}&#x0027;\u{22}")
    string = string.replacingOccurrences(of: "\u{22}\u{7F}\u{22}", with: "\u{22}&#x007F;\u{22}")
    string = string.replacingOccurrences(of: "&quot;", with: "&#x0022;")
    string = string.replacingOccurrences(of: "&amp;", with: "&#x0026;")
    string = string.replacingOccurrences(of: "&lt;", with: "&#x003C;")
    string = string.replacingOccurrences(of: "&gt;", with: "&#x003E;")

    return StrictString(string)
  }

  // MARK: - macOS Keyboard Layout Bundle

  internal func macOSKeyboardLayoutBundleInfoPlistKeyLayoutInfo() -> [String: String] {
    var result: [String: String] = [:]
    result["TISIntendedLanguage"] = targetedLanguage?.code
    return result
  }
}
