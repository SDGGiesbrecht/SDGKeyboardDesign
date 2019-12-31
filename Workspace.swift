/*
 Workspace.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 */

import WorkspaceConfiguration

let configuration = WorkspaceConfiguration()
configuration._applySDGDefaults()

configuration.documentation.currentVersion = Version(0, 0, 0)

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

// #workaround(Not finished setting up yet.)
configuration.licence.licence = .copyright
configuration.licence.manage = false
configuration.fileHeaders.copyrightNotice = Lazy<
  [LocalizationIdentifier: StrictString]
>(resolve: { configuration in
  return [
    "🇨🇦EN":
      "Copyright #dates \(configuration.documentation.primaryAuthor!)."
  ]
})
