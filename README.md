<!--
 README.md

 This source file is part of the SDGKeyboardDesign open source project.

 Copyright ©2019 Jeremy David Giesbrecht.

 Soli Deo gloria.

 This software is subject to copyright law.
 It may not be used, copied, distributed or modified without first obtaining a private licence from the copyright holder(s).
 -->

macOS • Linux • iOS • watchOS • tvOS

# SDGKeyboardDesign

SDGKeyboardDesign provides tools for generating keyboard layouts.

> [עַתָּה בּוֹא כׇתְבָהּ עַל־לוּחַ אִתָּם וְעַל־סֵפֶר חֻקָּהּ וּתְהִי לְיוֹם אַחֲרוֹן לָעַד עַד־עוֹלָם׃](https://www.biblegateway.com/passage/?search=Isaiah+30&version=WLC;NIV)
>
> [Now go, write it for them on a tablet and record it in a book so it will survive until the last day, forever and into eternity.](https://www.biblegateway.com/passage/?search=Isaiah+30&version=WLC;NIV)
>
> ―⁧יהוה⁩/Yehova

### Features:

- Generates native keyboard layout bundles for macOS.
- Supports localized metadata.
- Provides a sophisticated symbol key (`¤`, `Symbol.key`), which enables entry of symbols by spelling out their names.

### Example Usage

SDGKeyboardDesign is a Swift library and can be used in many ways, but even if you are unfamiliar with Swift, you should still be able to create a keyboard for yourself by modifying the following example.

1. Make sure you have [Swift](https://swift.org) installed.
2. Download the source code of [this repository](https://github.com/SDGGiesbrecht/SDGKeyboardDesign). (Click “Clone or download”, then “Download ZIP”.)
3. Find the file with example below under `Tests/SDGKeyboardDocumentationExampleTests/ReadMeExampleTests.swift` and edit it however you desire.
  - Don’t forget to give the bundle a real name. (If you leave it as “Example Keyboards” it won’t work.)
4. Open a terminal and navigate to the repository root.
  1. Type `cd` and a space.
  2. Drag the main downloaded directory into the terminal.
  3. Press enter. The prompt should now include the directory name.
5. Paste this command into the terminal: `swift test --filter ./testReadMeExample`. When it finishes, there should be a keyboard bundle in the Downloads directory.
6. Move the keyboard bundle into `System/Library/Keyboard Layouts`. (Create the directory if it does not exist yet.)
7. Open System Preferences, go to “Keyboard”, then “Input Methods” and click the plus sign. Your custom keyboard should be somewhere in the list.

```swift

```

## About

The SDGKeyboardDesign project is maintained by Jeremy David Giesbrecht.

If SDGKeyboardDesign saves you money, consider giving some of it as a [donation](https://paypal.me/JeremyGiesbrecht).

If SDGKeyboardDesign saves you time, consider devoting some of it to [contributing]() back to the project.

> [Ἄξιος γὰρ ὁ ἐργάτης τοῦ μισθοῦ αὐτοῦ ἐστι.](https://www.biblegateway.com/passage/?search=Luke+10&version=SBLGNT;NIV)
>
> [For the worker is worthy of his wages.](https://www.biblegateway.com/passage/?search=Luke+10&version=SBLGNT;NIV)
>
> ―‎ישוע/Yeshuʼa
