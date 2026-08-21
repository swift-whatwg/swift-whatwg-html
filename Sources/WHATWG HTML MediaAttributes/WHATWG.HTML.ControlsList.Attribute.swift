public import WHATWG_HTML_Shared

extension WHATWG.HTML.ControlsList {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.ControlsList.Attribute {

    @inlinable public static var attribute: String { "controlslist" }
}

extension WHATWG.HTML.ControlsList.Attribute {

    @inlinable public static var nodownload: Self { "nodownload" }

    @inlinable public static var nofullscreen: Self { "nofullscreen" }

    @inlinable public static var noremoteplayback: Self { "noremoteplayback" }

    public static func combine(_ values: [WHATWG.HTML.ControlsList.Attribute]) -> Self {
        return Self(values.map(\.rawValue).joined(separator: " "))
    }
}

extension WHATWG.HTML.ControlsList.Attribute: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: WHATWG.HTML.ControlsList.Attribute...) {
        self = Self.combine(elements)
    }
}
