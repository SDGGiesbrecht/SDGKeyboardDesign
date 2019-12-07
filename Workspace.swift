/*
 Workspace.swift

 This source file is part of the SDGKeyboardDesign open source project.

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 */

import WorkspaceConfiguration

let configuration = WorkspaceConfiguration()
configuration._applySDGDefaults()

configuration.documentation.currentVersion = Version(0, 0, 0)

configuration.documentation.localizations = ["🇨🇦EN"]

configuration.documentation.api.yearFirstPublished = 2019
configuration.documentation.repositoryURL = URL(
  string: "https://github.com/SDGGiesbrecht/SDGKeyboardDesign"
)!

configuration.documentation.api.encryptedTravisCIDeploymentKey =
  "kTO6df9ImOWf3/rcPtdZK985e9B9Q5YFWVtvWuwpEMXW4HOoHapb9XigFoaFEBa+4zPhrUrKYk4+BJvVEAOTKEQ/bF/M+ZPfh5A2ruE6L2cwdrKH+hpUx+4wgR4d21d5wyL/Nbv1tfPIJ2xkgm+CfUAnWpWLHP5fghBQ4WoTtBQHLZBfM/ILdwnpV/nhP9oXyRZn8J2cnpGoqUkh3eZKCrjeZyDBYLNTGFb6f3nHNWD3ANvBXZyJs9UpeF69tNttKFaGIYgU3MdH9pyyI0pglhX7s15FTlOljwxypzqDprX+RamSrFHXKc7MVMUGGB4GWwJ7uFFKxLyA9zlbMaVOvsYMJkgEZq0JXODeBv9aFKjGQC64lc6M8eRYCbD9rd2jI2H3U5KLHSFPTg+VXQzV6ANlM5Jkwb5RSTQS0JAldC5agEdsEJ432C9gmreqZEPnS8qjuPrzFzis/Jf5oiMFUJIWP0jWRmKbgWQyWeXYRzBgYzqCthHM8ySXlU3vVR3FTZOi4BuYVOv6B/lJ71axIUCSmD5OCp3F4Z53K6vGAw3Qry1sX5lPPKEiLsjiqTvmLYPKgcrgR/QhMReXhxsTBx6WMrLVjFzTUsSbV+GasOoMcpySfXGq+mag3ukIztOhJxN2pVZNB4ooBZySrv74ydsr8FEd+VH8xtW5xB8b+SM="

configuration._applySDGOverrides()
// #workaround(Not finished setting up yet.)
// configuration._validateSDGStandards()

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
