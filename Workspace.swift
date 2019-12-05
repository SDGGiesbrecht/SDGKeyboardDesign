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

configuration.documentation.repositoryURL = URL(
  string: "https://github.com/SDGGiesbrecht/SDGKeyboardDesign"
)!

configuration.documentation.api.encryptedTravisCIDeploymentKey =
  "WuqBO5OK23scAkbILb3M9zwxO6SivVzfV444eflriV81L/Pk/BmIgGjXv2uz5LjlUDPZfU3h2IiCDESl9xNkMsrMkFm80tWrld0L4o65QMA+sO2eNjk71oH08gAOPSxbS+w13AiC4VsuqEdYcdBHh8v9c/qRtD8xNGvEH4G9v0KCPrCoIGjeXird9RdEVj5OeY1coadwRS/DmGu0Xeb8Am4sXgtJwIV6ad6PI0m8yfWZpUzVCyp/fHsk7vY3WEqEs9H2/9bQmcMxS8BJY4Vxlx/KZmDxHqWOeAS77d9JoKXGsc1WAnVzFyEFu4umFybOT9FddEHS60DEkX6P0mxfMyt+lbdBi6BK/pRwostw3aNPYShlLW7Ai3LvzONLWmSeO58gawhHmY6jtkZYqZDdHINvORFAuTGeO05nIfXeHBjEdPq5L3K93IGk8nQk2YdkFAZ/sTN8U8ybXXloTGmgo7ONtgtjNyocqiXU4MYpsGNXcBKVyyxCRM6lhQfyxnj0O/bSJBJixoNsuu56XnjbhhF/zqSEmF+sl7P5Y56PAk+XPZbCDk2hN4rKBjWbwBR/PjsMLmghlSfhP2OxxGiirBKvFcr5qkI2R+3d10IPzhoAWTH/nHBPeOEVGguiMGNIt+z5V/MbyTkqbRtduKWOrA8PDkRRAQhDIRN7gV1uNSQ="

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
configuration.documentation.api.enforceCoverage = false
