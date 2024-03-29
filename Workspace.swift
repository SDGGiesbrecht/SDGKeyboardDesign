/*
 Workspace.swift

 This source file is part of the SDGKeyboardDesign open source project.
 https://sdggiesbrecht.github.io/SDGKeyboardDesign

 Copyright ©2019–2023 Jeremy David Giesbrecht and the SDGKeyboardDesign project contributors.

 Soli Deo gloria.
 */

import WorkspaceConfiguration

let configuration = WorkspaceConfiguration()
configuration._applySDGDefaults()

configuration.documentation.currentVersion = Version(2, 1, 3)

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
