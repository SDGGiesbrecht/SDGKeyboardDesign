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
  "ShwqDOuspAI2Hur2bbA2fqyCLN+ElY1a1dqsJDbczd4obOb6mJd+1Bc/ewMAV0ls2Y5Z9b25FcQUghatUfhzpHJylG7c2jqBFj3QjWnuddRkc1omW2WWwzeY8ZGPEhE7hQlDxYynX/3z+rtadp32rhgTS66/Iz4Zh36oGf12RCXSDA7abv1OaLSLOfyyvo4Wni9XgzcMb5JWQtzyAkcG9URYIgylqY8CUdQJK2GK+PfO5JyiUHPo6GtzbREeW7wZOTXHbJbuza73YNLV2zDNLbhjnhNKjffm0LmEom+BQwWIG+fLtO5eb80eR3r6qBB4/3RLeeKbMhixBGqpBcwZF7zLL8+iEA6b2QkAjTFr06sL4sOKGGDFUehDWpkZIb5asddaiRlROM5JEIZiE6YrMIrw+eBmyAXG9iBdETRWmOfDeKd0BDkHF0AaG/2hKUlPJSuKwffBuDU9Bn4+vfwlfiq59eac6P5HCbAfBDJ41jge1vVLugG0ylM//xxDoQT6n+TWHo+b85izIkdUvyVYPWcRdCzKG37cHul8LPPZb6KFjIxZaqDvcjYYvvdlsbCJww+e4O3RrHjvUzQqQIYR0SHoVmVad0sBKRJo6RH0jC8SjDl7IBm81yyT7mTmYMAz91bB+t6Tcj3V6V9wHE0JCLdvd37pfURPp4bm1y/7fkw="

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
