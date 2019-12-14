/*
 Symbol.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 */

import SDGLogic
import SDGText

import SDGKeyboardDesignLocalizations

/// A symbol entered by spelling its name.
public enum Symbol {

  /// The symbol key.
  public static let key: StrictString = "¤"

  /// The dictionary for symbols provided by `Symbol`.
  public static let defaultDictionary: [StrictString: StrictString] = {
    var dictionary: [StrictString: StrictString] = [:]
    for entryGroup in [
      arrows,
      cardSuits,
      chemistry,
      copyright,
      correctness,
      currency,
      flags,
      footnotes,
      gender,
      keyLabels,
      layoutGlyphs,
      logic,
      mathematicalConstants,
      mathematicalOperators,
      mathematicalRelations,
      miscellaneous,
      music,
      phonetics,
      setLogic,
      units
    ].lazy.joined() {

      for localization in ContentLocalization.allCases {
        if let resolved = entryGroup.resolved(for: localization) {
          for name in resolved.names {
            if let existing = dictionary[name] {
              assert(
                existing == resolved.symbol,
                {
                  return  // @exempt(from: tests)
                    "Ambiguous name: “\(name)” → “\(existing)”/“\(resolved.symbol)”"
                }()
              )
            }
            dictionary[name] = resolved.symbol
          }
        }
      }
    }
    return dictionary
  }()

  // MARK: - Methods

  internal static func mapping(from dictionary: [StrictString: StrictString]) -> [StrictString:
    [StrictString: StrictString]]
  {

    var symbolsFull: [StrictString: StrictString] = [:]
    for (name, symbol) in dictionary {
      symbolsFull["¤\(name)¤"] = symbol
    }

    var symbolsShort: [StrictString: StrictString] = [:]
    for (name, symbol) in symbolsFull {
      var commonLength = 0
      for (otherName, otherSymbol) in symbolsFull {
        if symbol ≠ otherSymbol,
          name ≠ otherName
        {
          commonLength.increase(to: name.commonPrefix(with: otherName).contents.count)
        }
      }
      symbolsShort[StrictString(name.prefix(commonLength + 1))] = symbol
    }

    var mappings: [StrictString: [StrictString: StrictString]] = [:]
    for (name, symbol) in symbolsShort {
      for endIndex in name.indices.dropFirst() {
        let already = StrictString(name[name.startIndex..<endIndex])
        let new = StrictString(name[endIndex])
        var result = already + new
        if StrictString(result) == name {
          result = symbol
        }

        var fork: [StrictString: StrictString]
        if let existing = mappings[new] {
          fork = existing
        } else {
          fork = [:]
        }
        fork[already] = result
        mappings[new] = fork
      }

    }

    return mappings
  }

  internal static func states(from mapping: [StrictString: [StrictString: StrictString]])
    -> [StrictString]
  {
    var states: Set<StrictString> = []
    for (_, submapping) in mapping {
      for (state, _) in submapping {
        states.insert(state)
      }
    }
    return states.sorted()
  }

}
