public import WHATWG_HTML_Shared

extension WHATWG.HTML.Kind {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String = WHATWG.HTML.Kind.Attribute.subtitles.rawValue) {
            self.rawValue = value
        }
    }
}

extension WHATWG.HTML.Kind.Attribute {

    @inlinable public static var attribute: String { "kind" }
}

extension WHATWG.HTML.Kind.Attribute {

    @inlinable public static var subtitles: Self { "subtitles" }

    @inlinable public static var captions: Self { "captions" }

    @inlinable public static var chapters: Self { "chapters" }

    @inlinable public static var metadata: Self { "metadata" }
}
