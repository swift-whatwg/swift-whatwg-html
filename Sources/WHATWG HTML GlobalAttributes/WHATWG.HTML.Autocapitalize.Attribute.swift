public import WHATWG_HTML_Shared

extension WHATWG.HTML.Autocapitalize {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Autocapitalize.Attribute {

    @inlinable public static var attribute: String { "autocapitalize" }
}

extension WHATWG.HTML.Autocapitalize.Attribute {

    @inlinable public static var none: Self { "none" }

    @inlinable public static var off: Self { "off" }

    @inlinable public static var sentences: Self { "sentences" }

    @inlinable public static var on: Self { "on" }

    @inlinable public static var words: Self { "words" }

    @inlinable public static var characters: Self { "characters" }
}

extension WHATWG.HTML.Autocapitalize.Attribute: CaseIterable {
    @inlinable public static var allCases: [Self] {
        [.none, .off, .sentences, .on, .words, .characters]
    }
}
