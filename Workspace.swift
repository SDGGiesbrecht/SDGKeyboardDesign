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

configuration._applySDGOverrides()
// #workaround(Not finished setting up yet.)
// configuration._validateSDGStandards()

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
configuration.documentation.api.generate = false
configuration.documentation.api.enforceCoverage = false
