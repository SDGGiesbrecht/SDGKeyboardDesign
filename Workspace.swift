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
  "Rc6cMQS5LtW2JHrXCKIO0DMjBIMARc6Bk/II8Rqry7qingeylrhZKJxr2fEMUg/LD9OB0BbkLdIWSGcEtkT9Qqzolw5zAWn2cx4Up1z+ccBJNQDq4TZ0LyqFdv7Hv5UiJc0guFDV/4gOXPUtntRQSebashbFkf0v065XTET/KuRBLiZG+yeE2E/fJkrJfu/zyR+Hhc5tpu+ToyKW7ram9Zjegzvkrwz3oCy9/OBY6HGfdoseTvN9z6+/dX1FwKX4UtcT4pxT2QQAeeS4YX3oUEoCBNsD8mwY2k/OY6Xvvp8FNV6YSsYQE7MUpOd6VM6VbK0DznMy9z8I1+cBXr+mD/4AXsGNmpL7ZtJz6y5UfwEvyqbRDFNC0pS+xqf4YsXEx0mFxe0+usMpq+f5mdBWFvXMn3zYTZOKIwuEYxoc5WFQJSEhHLaqfM+JJzBGeLwNvwGHg9COzMESbKLXWV56Bf11M5QYUBpLge1Zqkaz9ZvbVe5/1DPEYKU0fnmGsbbyDxIPXMljhBBqoJ3bzsz/O/PiwE2loRkCKIqsU6FbjQNuKPZJRTP3D7MMfnqLGKxYKoT5YwaZnDm4wT8vREPIcM3EPjZRDsO1oVppK2CLpmYiXX1/IDE4Q8WkOVkmG9c4lpDio2vqv2/cnaT6CE3XiS4/GURL21cLkNBcb1E2aRM="

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
