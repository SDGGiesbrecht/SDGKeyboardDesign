/*
 Windows.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

#if os(Windows)
  // #workaround(Swift 5.2.4, CMake won’t create empty libraries.)
  public func _cmakePleaseCreateLibrary() {}
#endif
