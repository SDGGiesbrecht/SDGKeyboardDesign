/*
 Layer.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht.

 Soli Deo gloria.
 */

import SDGMathematics
import SDGCollections

/// A layer (alternate state) on the keyboard.
public enum Layer: OrderedEnumeration {

  /// No modifiers
  case noModifiers
  /// Shift (⇧)
  case shift
  /// Option (⌥)
  case option
  /// Shift + Option (⇧⌥)
  case shiftOption
  /// Caps Lock (⇪)
  case capsLock
  /// Caps Lock + Shift (⇪⇧)
  case capsLockShift
  /// Caps Lock + Option (⇪⌥)
  case capsLockOption
  /// Caps Lock + Shift + Option (⇪⇧⌥)
  case capsLockShiftOption
  /// Command (⌘)
  case command
  /// Shift Command (⇧⌘)
  case shiftCommand

  // MARK: - Properties

  private static let indexMapping = BijectiveMapping(Layer.allCases.indexMapping)
  internal var index: String {
    let result: Int = Layer.indexMapping[self]!
    return "\(result)"
  }

  internal var unshifted: Layer? {
    switch self {
    case .noModifiers, .option, .capsLock, .capsLockOption, .command:
      return nil
    case .shift:
      return .noModifiers
    case .shiftOption:
      return .option
    case .capsLockShift:
      return .capsLock
    case .capsLockShiftOption:
      return .capsLockOption
    case .shiftCommand:
      return .command
    }
  }
}
