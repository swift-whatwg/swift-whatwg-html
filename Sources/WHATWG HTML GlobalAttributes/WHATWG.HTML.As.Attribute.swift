public import WHATWG_HTML_Shared

extension WHATWG.HTML.As {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.As.Attribute {
    @inlinable public static var attribute: String { "as" }
}

extension WHATWG.HTML.As.Attribute {

    @inlinable public static var audio: Self { "audio" }

    @inlinable public static var document: Self { "document" }

    @inlinable public static var embed: Self { "embed" }

    @inlinable public static var fetch: Self { "fetch" }

    @inlinable public static var font: Self { "font" }

    @inlinable public static var image: Self { "image" }

    @inlinable public static var object: Self { "object" }

    @inlinable public static var script: Self { "script" }

    @inlinable public static var style: Self { "style" }

    @inlinable public static var track: Self { "track" }

    @inlinable public static var worker: Self { "worker" }
}
