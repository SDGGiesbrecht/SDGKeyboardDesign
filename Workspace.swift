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
  "dDSbe/8I6201ida+LQiMIYl1bAiL0duPNnvEVVwb0YskaBOeU5ykTHwH3qUdwVC6tbBv3jCtl1jysuMH8JmVAoYtnUkFPm7XUTxk9H3BfxpdP3el1XL7fpc3xR4Z5i4w4tIHSnDoGBHTucDyCkzjbuRnJfKRqJ88/SlunhCVSPLoJ76CAT+gWsxHDifs8ASOaZkK3NdADyeHGJmiABHqDxfGMnCSZ6WzV99LzYJRAuuQW4VNaMx5X3n26G03UrFIxiD8LJibkDedPeN/s59styQ9nZxeTdwDJKfMe9TNOgbJxAh8vOuLsKnW2GTwj0bGw/AAdsY/mR9BYFrTTdn2ek30kTzcqw7DQVY/IShlcHmgGxwZN7t4/EMouXP0SiX+OK0nBqpW8v1nahA3BxyFP94nlkGWVW2oUv2jpoTJBsBsO/PMLB1naaNyioWJsZTi73+NouBieXd/Tk3fLERWYlZuwhUCt/9qFw9AHnj/Wku4bpS4lG/SqBL4X56Ow0eICOr3+QmWI4IR8OMoGf29vuPFIUdvRXtnaAD4lHcMvtx0IekJqLwj1RIB+9xmZ6WIfvinOFDR1Oy02Dlbls203vFE78QtVWwnQ6xhfwH6/4uuDdhxrvLt+a79lWJUkWqC3tovgTPWSzk1qYb3EXVuDXdJm1Aj/0/syriSrh8AeHc="

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
