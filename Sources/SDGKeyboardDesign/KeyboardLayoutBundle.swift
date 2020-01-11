/*
 KeyboardLayoutBundle.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 */

import Foundation

import SDGLogic
import SDGCollections
import SDGText
import SDGLocalization

/// A keyboard layout bundle.
public struct KeyboardLayoutBundle<L> where L: InputLocalization {

  /// Creates a keyboard layout bundle.
  ///
  /// - Parameters:
  ///     - name: The name of the keyboard layout bundle.
  ///     - layouts: The keyboard layouts in the bundle.
  ///     - copyrightNotice: The copyright notice.
  ///     - bundleIdentifier: The macOS bundle identifier.
  public init(
    name: UserFacing<StrictString, L>,
    layouts: [KeyboardLayout<L>],
    copyright copyrightNotice: UserFacing<StrictString, L>,
    bundleIdentifier: StrictString
  ) {

    self.name = name
    self.layouts = layouts
    self.copyright = copyrightNotice

    var bundle = bundleIdentifier
    let requiredSubstring: StrictString = ".keyboardlayout."
    if ¬bundle.contains(requiredSubstring) {
      let range = bundle.lastMatch(for: ".")?.range ?? bundle.endIndex..<bundle.endIndex
      bundle.replaceSubrange(range, with: requiredSubstring)
    }
    self.bundleIdentifier = bundle
  }

  // MARK: - Properties

  private let name: UserFacing<StrictString, L>
  private let layouts: [KeyboardLayout<L>]
  private let copyright: UserFacing<StrictString, L>
  private let bundleIdentifier: StrictString

  private var unlocalizedName: StrictString {
    return name.resolved(for: L.fallbackLocalization)
  }

  // MARK: - Generation

  /// Exports a macOS keyboard layout bundle in the specified directory.
  ///
  /// - Parameters:
  ///   - directory: The directory in which to place the exported layout.
  public func generate(in directory: URL) throws {
    let bundleDirectory = directory.appendingPathComponent("\(unlocalizedName).bundle")
    let contentsDirectory = bundleDirectory.appendingPathComponent("Contents")

    try macOSKeyboardLayoutBundleInfoPlist().save(
      to: contentsDirectory.appendingPathComponent("Info.plist")
    )

    let resourcesDirectory = contentsDirectory.appendingPathComponent("Resources")
    for layout in layouts {
      try layout.keyLayoutFile().save(
        to: resourcesDirectory.appendingPathComponent("\(layout.unlocalizedName).keylayout")
      )
      if let icon = layout.icon {
        try FileManager.default.copy(
          icon,
          to: resourcesDirectory.appendingPathComponent("\(layout.unlocalizedName).icns")
        )
      }
    }
    for localization in L.allCases {
      let strings = macOSKeyboardLayoutBundleLocalizedInfoPlistStrings(localization)
      let localizationDirectory = resourcesDirectory.appendingPathComponent(
        "\(localization.code).lproj"
      )
      try strings.save(to: localizationDirectory.appendingPathComponent("InfoPlist.strings"))
    }
  }
  // MARK: - macOS Keyboard Layout Bundle

  private func macOSKeyboardLayoutBundleInfoPlistDictionary() -> [String: Any] {
    var result: [String: Any] = [
      "CFBundleDevelopmentRegion": L.fallbackLocalization.code,
      "CFBundleIdentifier": String(bundleIdentifier),
      "CFBundleName": String(name.resolved(for: L.fallbackLocalization)),
      "CFBundleDisplayName": String(name.resolved(for: L.fallbackLocalization)),
      "NSHumanReadableCopyright": String(copyright.resolved(for: L.fallbackLocalization))
    ]
    for layout in layouts {
      result["KLInfo_" + String(layout.unlocalizedName)] =
        layout.macOSKeyboardLayoutBundleInfoPlistKeyLayoutInfo()
    }
    return result
  }

  /// Returns the information property list of the macOS keyboard layout bundle.
  public func macOSKeyboardLayoutBundleInfoPlist() -> StrictString {
    let encoded = try! PropertyListSerialization.data(
      fromPropertyList: macOSKeyboardLayoutBundleInfoPlistDictionary(),
      format: .xml,
      options: 0
    )
    return try! StrictString(file: encoded, origin: nil)
  }

  /// Returns the information property list strings file for the macOS keyboard layout bundle.
  ///
  /// - Parameters:
  ///   - localization: The localization.
  public func macOSKeyboardLayoutBundleLocalizedInfoPlistStrings(_ localization: L) -> StrictString
  {
    var result: [StrictString] = []
    result.append("\u{22}CFBundleName\u{22} = \u{22}\(name.resolved(for: localization))\u{22};")
    result.append(
      "\u{22}CFBundleDisplayName\u{22} = \u{22}\(name.resolved(for: localization))\u{22};"
    )
    result.append(
      "\u{22}NSHumanReadableCopyright\u{22} = \u{22}\(copyright.resolved(for: localization)))\u{22};"
    )
    for layout in layouts {
      result.append(
        "\u{22}\(layout.unlocalizedName)\u{22} = \u{22}\(layout.name.resolved(for: localization))\u{22};"
      )
    }
    return result.joined(separator: "\n")
  }
}
