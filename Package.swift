// swift-tools-version:5.1

/*
 Package.swift

 This source file is part of the SDGKeyboardDesign open source project.

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 */

import PackageDescription

// #workaround(Needs verse.)
// #workaround(Needs feature list.)
// #workaround(Needs example.)
/// SDGKeyboardDesign provides tools for generating keyboard layouts.
let package = Package(
    name: "SDGKeyboardDesign",
    products: [
        .library(name: "SDGKeyboardDesign", targets: ["SDGKeyboardDesign"])
    ],
    dependencies: [
        .package(url: "https://github.com/SDGGiesbrecht/SDGCornerstone", from: Version(3, 0, 0)),
        .package(url: "https://github.com/SDGGiesbrecht/SDGInterface", .upToNextMinor(from: Version(0, 4, 0))),
        .package(url: "https://github.com/SDGGiesbrecht/SDGWeb", .upToNextMinor(from: Version(4, 0, 0)))
    ],
    targets: [

        // Products

        .target(name: "SDGKeyboardDesign", dependencies: [
            "SDGKeyboardDesignXMLShims",
            "SDGKeyboardDesignLocalizations",
            .product(name: "SDGLogic", package: "SDGCornerstone"),
            .product(name: "SDGMathematics", package: "SDGCornerstone"),
            .product(name: "SDGCollections", package: "SDGCornerstone"),
            .product(name: "SDGText", package: "SDGCornerstone"),
            .product(name: "SDGPersistence", package: "SDGCornerstone"),
            .product(name: "SDGLocalization", package: "SDGCornerstone"),
            .product(name: "SDGKeyboard", package: "SDGInterface"),
            ]),

        // Internal

        .target(name: "SDGKeyboardDesignLocalizations", dependencies: [
            .product(name: "SDGLocalization", package: "SDGCornerstone")
            ]),
        .target(name: "SDGKeyboardDesignXMLShims", dependencies: [
            .product(name: "SDGLogic", package: "SDGCornerstone"),
            .product(name: "SDGHTML", package: "SDGWeb")
            ]),

        // Tests

        .testTarget(name: "SDGKeyboardDesignTests", dependencies: [
            "SDGKeyboardDesign",
            .product(name: "SDGText", package: "SDGCornerstone"),
            .product(name: "SDGLocalization", package: "SDGCornerstone"),
            .product(name: "SDGXCTestUtilities", package: "SDGCornerstone"),
            .product(name: "SDGPersistenceTestUtilities", package: "SDGCornerstone")
            ])
    ]
)
