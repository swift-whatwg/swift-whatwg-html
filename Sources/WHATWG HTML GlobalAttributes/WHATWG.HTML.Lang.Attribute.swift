public import RFC_5646
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Lang {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Lang.Attribute {

    @inlinable public static var attribute: String { "lang" }
}

extension WHATWG.HTML.Lang.Attribute {

    public init(language: RFC_5646.LanguageTag) {
        self = .init(value: language.value)
    }
}

extension WHATWG.HTML.Lang.Attribute {

    @inlinable public static var english: Self { "en" }

    @inlinable public static var french: Self { "fr" }

    @inlinable public static var german: Self { "de" }

    @inlinable public static var spanish: Self { "es" }

    @inlinable public static var italian: Self { "it" }

    @inlinable public static var japanese: Self { "ja" }

    @inlinable public static var chinese: Self { "zh" }

    @inlinable public static var russian: Self { "ru" }

    @inlinable public static var arabic: Self { "ar" }

    @inlinable public static var americanEnglish: Self { "en-US" }

    @inlinable public static var britishEnglish: Self { "en-GB" }
}
