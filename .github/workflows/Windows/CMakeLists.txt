

cmake_minimum_required(VERSION 3.15)

project("SDGKeyboardDesign" LANGUAGES Swift)

include(CTest)

set(CMAKE_Swift_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/swift)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

option(BUILD_SHARED_LIBS "Use dynamic linking" YES)

add_library("SDGControlFlow"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGControlFlow/APILocalization.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGControlFlow/Assert.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGControlFlow/Caching.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGControlFlow/Decodable.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGControlFlow/DefaultAssignmentPropertyWrapper.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGControlFlow/Encodable.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGControlFlow/Memory.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGControlFlow/NonmutatingVariants.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGControlFlow/ProjectingPropertyWrapper.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGControlFlow/PropertyWrapper.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGControlFlow/Shared.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGControlFlow/SharedProperty.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGControlFlow/SharedValueObserver.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGControlFlow/TextualPlaygroundDisplay.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGControlFlow/TransparentWrapper.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGControlFlow/Weak.swift"
)
set_target_properties("SDGControlFlow" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGControlFlow" PRIVATE -enable-testing)

add_library("SDGLogic"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLogic/Any.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLogic/Bool.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLogic/Equatable.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLogic/NilLiteral.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLogic/Operators.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLogic/Tuple.swift"
)
set_target_properties("SDGLogic" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGLogic" PRIVATE -enable-testing)

add_library("SDGMathematics"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Angle.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/BitField.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/ClosedRange.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Comparable.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Data.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Float.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/FunctionAnalysis.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Int.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Measurement.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/Addable.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/FixedScaleOneDimensionalPoint.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/GenericAdditiveArithmetic.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/IntegerProtocol.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/IntegralArithmetic.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/Negatable.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/NumericAdditiveArithmetic.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/OneDimensionalPoint.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/OneDimensionalVector.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/PointProtocol.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/RationalArithmetic.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/RationalNumberProtocol.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/RationalVector.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/RealArithmetic.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/RealNumberProtocol.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/Subtractable.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/VectorProtocol.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/WholeArithmetic.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Numeric Protocols/WholeNumberProtocol.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Operators.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/OrderedEnumeration.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Sequence.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/Tuple.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGMathematics/UInt.swift"
)
set_target_properties("SDGMathematics" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGMathematics" PRIVATE -enable-testing)
target_link_libraries("SDGMathematics" PRIVATE
  "SDGControlFlow"
  "SDGLogic"
)

add_library("SDGCollections"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Addable.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Associative/BijectiveMapping.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Associative/ContextualMapping.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Associative/Dictionary.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Conformances/CharacterSet.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Conformances/Data.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Conformances/String.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/LegacyMode.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Operators.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/AnyCollection.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/Array.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/BidirectionalCollection.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/Collection.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/CollectionDifference.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/CollectionDifferenceChange.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/FillDirection.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/Patterns/AlternativePatterns.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/Patterns/AnyPattern.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/Patterns/ConcatenatedPatterns.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/Patterns/ConditionalPattern.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/Patterns/NaryAlternativePatterns.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/Patterns/NaryConcatenatedPatterns.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/Patterns/NegatedPattern.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/Patterns/NestingLevel.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/Patterns/Pattern.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/Patterns/PatternConsumption.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/Patterns/PatternMatch.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/Patterns/RepetitionPattern.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/Range.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/RangeExpression.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/RangeReplaceableCollection.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/ReversedCollection.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/SearchableBidirectionalCollection.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/SearchableCollection.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Ordered/Slice.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Unordered/AbsoluteComplement.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Unordered/ComparableSet.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Unordered/FiniteSet.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Unordered/IntensionalSet.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Unordered/Intersection.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Unordered/MutableSet.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Unordered/Set.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Unordered/SetDefinition.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Unordered/SetInRepresentableUniverse.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCollections/Unordered/Union.swift"
)
set_target_properties("SDGCollections" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGCollections" PRIVATE -enable-testing)
target_link_libraries("SDGCollections" PRIVATE
  "SDGControlFlow"
  "SDGLogic"
  "SDGMathematics"
)

add_library("SDGText"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/CharacterSet.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/CollectionStringFamily.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/CollectionUnicodeScalar.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/Compatibility/StaticString.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/Compatibility/String.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/Compatibility/StringClusterView.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/Compatibility/StringScalarView.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/ExtendedGraphemeCluster.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/Font/Font.Definition.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/Font/Font.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/Font/NSFont.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/Font/SwiftUI.Font.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/Font/UIFont.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/MarkupPlaygroundDisplay.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/Range.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/SemanticMarkup.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/SemanticMarkupStringInterpolation.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/Strict/StrictString.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/Strict/StrictStringClusterView.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/Strict/StrictStringInterpolationProtocol.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/Strict/StrictStringStringInterpolation.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/String Family/ExtendedGraphemeClusterView.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/String Family/Line.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/String Family/LineView.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/String Family/LineViewIndex.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/String Family/NewlinePattern.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/String Family/StringFamily.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/String Family/StringIndex.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/String Family/UnicodeScalarView.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGText/UnicodeScalar.swift"
)
set_target_properties("SDGText" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGText" PRIVATE -enable-testing)
target_link_libraries("SDGText" PRIVATE
  "SDGControlFlow"
  "SDGLogic"
  "SDGMathematics"
  "SDGCollections"
)

add_library("SDGPersistence"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGPersistence/Data.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGPersistence/FileConvertible.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGPersistence/FileManager.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGPersistence/Preference.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGPersistence/PreferenceSet.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGPersistence/ProcessInfo.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGPersistence/StrictString.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGPersistence/String.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGPersistence/URL.swift"
)
set_target_properties("SDGPersistence" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGPersistence" PRIVATE -enable-testing)
target_link_libraries("SDGPersistence" PRIVATE
  "SDGControlFlow"
  "SDGLogic"
  "SDGMathematics"
  "SDGCollections"
  "SDGText"
)

add_library("SDGLocalization"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/CachedLocalization.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/Bool.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/Decodable.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/LosslessStringConvertible.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/Numbers/Angle.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/Numbers/Float.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/Numbers/Int.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/Numbers/IntegerProtcool.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/Numbers/IntegralArithmetic.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/Numbers/RationalArithmetic.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/Numbers/RationalNumberProtocol.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/Numbers/UInt.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/Numbers/WholeArithmetic.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/Numbers/WholeNumberProtocol.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/Precondition.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/PresentableError.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/Range.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/TextConvertibleNumber.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Extensions/TextConvertibleNumberParseError.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/InputLocalization.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Interpolation/Casing.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Interpolation/EnglishCasing.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Interpolation/GenreGrammatical.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Interpolation/GrammaticalGender.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Interpolation/GrammaticalNumber.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Interpolation/GrammatikiPtosi.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Localization.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/LocalizationSetting.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/LocalizationSettingStabilizationMode.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Localizations/APILocalization.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Localizations/AnyLocalization.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Localizations/ContentLocalization.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Localizations/FormatLocalization.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Localizations/InterfaceLocalization.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Metadata/Language.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Metadata/LocalizationData.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Metadata/Script.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Metadata/State.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Metadata/StateData.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/Metadata/TextDirection.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/UserFacing.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGLocalization/UserFacingDynamic.swift"
)
set_target_properties("SDGLocalization" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGLocalization" PRIVATE -enable-testing)
target_link_libraries("SDGLocalization" PRIVATE
  "SDGControlFlow"
  "SDGLogic"
  "SDGMathematics"
  "SDGCollections"
  "SDGText"
  "SDGPersistence"
)

add_library("SDGCornerstoneLocalizations"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCornerstoneLocalizations/APILocalization.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCornerstoneLocalizations/FormatLocalization.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCornerstoneLocalizations/InterfaceLocalization.swift"
)
set_target_properties("SDGCornerstoneLocalizations" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGCornerstoneLocalizations" PRIVATE -enable-testing)
target_link_libraries("SDGCornerstoneLocalizations" PRIVATE
  "SDGControlFlow"
  "SDGLocalization"
)

add_library("SDGCalendar"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Abstract Components/CalendarComponent.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Abstract Components/CardinalCalendarComponent.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Abstract Components/ConsistentDurationCalendarComponent.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Abstract Components/ConsistentlyOrderedCalendarComponent.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Abstract Components/Day.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Abstract Components/EnumerationCalendarComponent.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Abstract Components/ICalendarComponent.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Abstract Components/ISOCalendarComponent.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Abstract Components/Month.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Abstract Components/NumericCalendarComponent.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Abstract Components/OrdinalCalendarComponent.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Abstract Components/RawRepresentableCalendarComponent.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Abstract Components/SmallestCalendarComponent.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Abstract Components/Weekday.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Abstract Components/Year.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/AnyDescribableDate.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/CalendarDate.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/CalendarInterval.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Date.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/DateDefinition.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/DescribableDate.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/FoundationDate.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Gregorian/GregorianDate.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Gregorian/GregorianDay.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Gregorian/GregorianHour.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Gregorian/GregorianMinute.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Gregorian/GregorianMonth.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Gregorian/GregorianSecond.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Gregorian/GregorianWeekday.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Gregorian/GregorianWeekdayDate.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Gregorian/GregorianYear.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Hebrew/HebrewDate.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Hebrew/HebrewDay.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Hebrew/HebrewHour.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Hebrew/HebrewMonth.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Hebrew/HebrewMonthAndYear.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Hebrew/HebrewPart.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Hebrew/HebrewWeekday.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Hebrew/HebrewWeekdayDate.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Hebrew/HebrewYear.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/Hebrew/HebrewYearLength.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/RationalArithmetic.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/RelativeDate.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGCalendar/UnknownDate.swift"
)
set_target_properties("SDGCalendar" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGCalendar" PRIVATE -enable-testing)
target_link_libraries("SDGCalendar" PRIVATE
  "SDGControlFlow"
  "SDGLogic"
  "SDGMathematics"
  "SDGCollections"
  "SDGText"
  "SDGLocalization"
  "SDGCornerstoneLocalizations"
)

add_library("SDGTesting"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGTesting/PerformanceTest.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGTesting/Test.swift"
)
set_target_properties("SDGTesting" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGTesting" PRIVATE -enable-testing)
target_link_libraries("SDGTesting" PRIVATE
  "SDGControlFlow"
  "SDGMathematics"
  "SDGText"
  "SDGLocalization"
  "SDGCornerstoneLocalizations"
)

add_library("SDGPersistenceTestUtilities"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGPersistenceTestUtilities/Codable.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGPersistenceTestUtilities/FileConvertible.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGPersistenceTestUtilities/Specification.swift"
)
set_target_properties("SDGPersistenceTestUtilities" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGPersistenceTestUtilities" PRIVATE -enable-testing)
target_link_libraries("SDGPersistenceTestUtilities" PRIVATE
  "SDGPersistence"
  "SDGTesting"
  "SDGControlFlow"
  "SDGLogic"
  "SDGMathematics"
  "SDGCollections"
  "SDGText"
  "SDGLocalization"
  "SDGCalendar"
  "SDGCornerstoneLocalizations"
)

add_library("SDGXCTestUtilities"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGXCTestUtilities/TestCase.swift"
  "../../../.build/SDG/Dependencies/SDGCornerstone/Sources/SDGXCTestUtilities/XCTAssert.swift"
)
set_target_properties("SDGXCTestUtilities" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGXCTestUtilities" PRIVATE -enable-testing)
target_link_libraries("SDGXCTestUtilities" PRIVATE
  "SDGTesting"
  "SDGLogic"
  "SDGMathematics"
  "SDGText"
  "SDGPersistence"
)

add_library("SDGKeyboard"
  "../../../.build/SDG/Dependencies/SDGInterface/Sources/SDGKeyboard/Key.swift"
)
set_target_properties("SDGKeyboard" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGKeyboard" PRIVATE -enable-testing)
target_link_libraries("SDGKeyboard" PRIVATE
  "SDGLogic"
  "SDGCollections"
  "SDGText"
)

add_library("SDGKeyboardDesignLocalizations"
  "../../../Sources/SDGKeyboardDesignLocalizations/ContentLocalization.swift"
)
set_target_properties("SDGKeyboardDesignLocalizations" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGKeyboardDesignLocalizations" PRIVATE -enable-testing)
target_link_libraries("SDGKeyboardDesignLocalizations" PRIVATE
  "SDGLocalization"
)

add_library("SDGWebLocalizations"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGWebLocalizations/InterfaceLocalization.swift"
)
set_target_properties("SDGWebLocalizations" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGWebLocalizations" PRIVATE -enable-testing)
target_link_libraries("SDGWebLocalizations" PRIVATE
  "SDGLocalization"
)

add_library("SDGHTML"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Entities.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/HTML.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Localization.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/ContentSyntaxKind.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/HeadingLevel.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/AttributeSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/AttributeValueSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/AttributesSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/ClosingTagSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/CommentSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/ContentSyntax+Factories.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/ContentSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/DocumentSyntax+Factories.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/DocumentSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/ElementContinuationSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/ElementSyntax+Factories.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/ElementSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/ListSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/ListSyntaxAttributeSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/ListSyntaxContentSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/OpeningTagSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/TextSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Nodes/TokenSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Protocols/AttributedSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Protocols/ContainerSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Protocols/NamedSyntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/Protocols/Syntax.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/SyntaxError.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/SyntaxStorage.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/SyntaxUnfolder.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/SyntaxUnfolderContext.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/SyntaxUnfolderError.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/SyntaxUnfolderProtocol.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/TokenKind.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/Syntax/UnfoldingError.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/TextDirection.swift"
  "../../../.build/SDG/Dependencies/SDGWeb/Sources/SDGHTML/UnicodeScalar.swift"
)
set_target_properties("SDGHTML" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGHTML" PRIVATE -enable-testing)
target_link_libraries("SDGHTML" PRIVATE
  "SDGWebLocalizations"
  "SDGControlFlow"
  "SDGLogic"
  "SDGMathematics"
  "SDGCollections"
  "SDGText"
  "SDGPersistence"
  "SDGLocalization"
)

add_library("SDGKeyboardDesignXMLShims"
  "../../../Sources/SDGKeyboardDesignXMLShims/Windows.swift"
  "../../../Sources/SDGKeyboardDesignXMLShims/XMLDTD.swift"
  "../../../Sources/SDGKeyboardDesignXMLShims/XMLDocument.swift"
  "../../../Sources/SDGKeyboardDesignXMLShims/XMLElement.swift"
  "../../../Sources/SDGKeyboardDesignXMLShims/XMLNode.Options.swift"
  "../../../Sources/SDGKeyboardDesignXMLShims/XMLNode.swift"
)
set_target_properties("SDGKeyboardDesignXMLShims" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGKeyboardDesignXMLShims" PRIVATE -enable-testing)
target_link_libraries("SDGKeyboardDesignXMLShims" PRIVATE
  "SDGLogic"
  "SDGHTML"
)

add_library("SDGKeyboardDesign"
  "../../../Sources/SDGKeyboardDesign/Arrangement.swift"
  "../../../Sources/SDGKeyboardDesign/Casing.swift"
  "../../../Sources/SDGKeyboardDesign/DeadKey.swift"
  "../../../Sources/SDGKeyboardDesign/KeyboardLayout.swift"
  "../../../Sources/SDGKeyboardDesign/KeyboardLayoutBundle.swift"
  "../../../Sources/SDGKeyboardDesign/Layer.swift"
  "../../../Sources/SDGKeyboardDesign/OSXScriptCode.swift"
  "../../../Sources/SDGKeyboardDesign/Sequence.swift"
  "../../../Sources/SDGKeyboardDesign/Symbol.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/Arrows.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/CardSuits.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/Chemistry.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/Copyright.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/Correctness.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/Currency.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/Flags.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/Footnotes.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/Gender.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/KeyLabels.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/LayoutGlyphs.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/LocalizedSymbol.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/Logic.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/MathematicalConstants.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/MathematicalOperators.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/MathematicalRelations.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/Miscellaneous.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/Music.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/Phonetics.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/SetLogic.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/SymbolData.swift"
  "../../../Sources/SDGKeyboardDesign/Symbols/Units.swift"
  "../../../Sources/SDGKeyboardDesign/XMLElement.swift"
)
set_target_properties("SDGKeyboardDesign" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGKeyboardDesign" PRIVATE -enable-testing)
target_link_libraries("SDGKeyboardDesign" PRIVATE
  "SDGKeyboardDesignXMLShims"
  "SDGKeyboardDesignLocalizations"
  "SDGLogic"
  "SDGMathematics"
  "SDGCollections"
  "SDGText"
  "SDGPersistence"
  "SDGLocalization"
  "SDGKeyboard"
)

add_library("SDGKeyboardDesignDocumentationExampleTests"
  "../../../Tests/SDGKeyboardDesignDocumentationExampleTests/ReadMeExampleTests.swift"
)
set_target_properties("SDGKeyboardDesignDocumentationExampleTests" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGKeyboardDesignDocumentationExampleTests" PRIVATE -enable-testing)
target_link_libraries("SDGKeyboardDesignDocumentationExampleTests" PRIVATE
  "SDGKeyboardDesign"
  "SDGText"
  "SDGLocalization"
  "SDGXCTestUtilities"
)

add_library("SDGKeyboardDesignTests"
  "../../../Tests/SDGKeyboardDesignTests/APITests.swift"
  "../../../Tests/SDGKeyboardDesignTests/InternalTests.swift"
  "../../../Tests/SDGKeyboardDesignTests/TestKeyboardLayout.swift"
)
set_target_properties("SDGKeyboardDesignTests" PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})
target_compile_options("SDGKeyboardDesignTests" PRIVATE -enable-testing)
target_link_libraries("SDGKeyboardDesignTests" PRIVATE
  "SDGKeyboardDesign"
  "SDGText"
  "SDGPersistence"
  "SDGLocalization"
  "SDGXCTestUtilities"
  "SDGPersistenceTestUtilities"
)

add_executable(WindowsMain
  WindowsMain.swift
)
target_link_libraries(WindowsMain PRIVATE
  "SDGKeyboardDesignDocumentationExampleTests"
  "SDGKeyboardDesignTests"
)
add_test(NAME WindowsMain COMMAND WindowsMain)
set_property(TEST WindowsMain PROPERTY ENVIRONMENT "LD_LIBRARY_PATH=${CMAKE_LIBRARY_OUTPUT_DIRECTORY}")
