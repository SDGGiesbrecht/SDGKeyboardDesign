/*
 Workspace.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2020 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import WorkspaceConfiguration

let configuration = WorkspaceConfiguration()
configuration._applySDGDefaults()

configuration.documentation.currentVersion = Version(1, 0, 0)

configuration.documentation.documentationURL = URL(
  string: "https://sdggiesbrecht.github.io/SDGKeyboardDesign"
)!
configuration.documentation.projectWebsite = URL(
  string: "https://sdggiesbrecht.github.io/SDGKeyboardDesign"
)!
configuration.documentation.api.yearFirstPublished = 2019
configuration.documentation.repositoryURL = URL(
  string: "https://github.com/SDGGiesbrecht/SDGKeyboardDesign"
)!

configuration.documentation.localizations = ["🇨🇦EN"]

configuration._applySDGOverrides()
configuration._validateSDGStandards()

configuration.licence.licence = nil
configuration.licence.manage = false

configuration.documentation.api.ignoredDependencies = [

  // SDGCornerstone
  "SDGCalendar",
  "SDGCollections",
  "SDGControlFlow",
  "SDGCornerstoneLocalizations",
  "SDGLocalization",
  "SDGLogic",
  "SDGMathematics",
  "SDGPersistence",
  "SDGPersistenceTestUtilities",
  "SDGTesting",
  "SDGText",
  "SDGXCTestUtilities",

  // SDGInterface
  "SDGKeyboard",

  // SDGWeb
  "SDGHTML",
  "SDGWebLocalizations",

  // Swift
  "Dispatch",
  "Foundation",
  "Swift",
  "XCTest"
]

// #workaround(workspace version 0.28.0, GitHub Action cache became invalid?)
configuration.continuousIntegration.manage = false

// #workaround(SDGCornerstone 4.0.0, Does not support Windows yet.)
configuration.supportedPlatforms.remove(.windows)
configuration.supportedPlatforms.remove(.android)
