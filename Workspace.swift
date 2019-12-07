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
  "YPA/ukb1XyuBYK1Km1PmMTcp+Z+ciI0drxlcqFCG/2klEhaEUe5OiT7K8WqWyhA9D1pXGslolXlmv/f4ul3R35LSsXUHOxJqhLkbQiOTZAtlPRSC5gW2YKk7i23eNs6jG1hgM7weZ8s+jeq+x37/Ac4WIwR1If5HplQwpnqVHFOcBBTw/hXy9rI1UzWf8vn2g1BxsjBfFDTYxDEb91uMH7x7DxBfB/wS3DYLuIvTMcqgejBdhL3tUWcWfUciXwNed1fxOn2Z9QcnqaDjED0kyVTn3qOTjvzK12zTH9l76E0qVkv2M48mC7j/YLSGKz5mIs0/PB0kDkMKbv4IMG9F8XTAgciYBG6NWKCesHqIIvWVzou/X59UH/LQSD7Clzv/uNTcpXwRspNNRsjg+LH0wrku4x3HlII7uG/bBsPVqw8S8kbFaW1MHT4s4BIZrcO2xWzndavQE49/bjjLXVTf8uZaHQjCwwDXCa9p7/gvFNsNbq40DaaI0YEuMG266mGojvD/Y+At1IjVV2Hjrz4RYoRvb994yHLM6Qd/u2zl8M/+N85mQ8HnqqlYL0yF8O/bS0/RxHy4e/vemVJozqwcK4tNl7vBfJNiTaiS0uJXnSS0ral5TqqB4ap0rMcU1YVimtWDCCcGWZ2ZTL4QcSp++AxCmIpNEnIBjtfByW1SKO8="

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
