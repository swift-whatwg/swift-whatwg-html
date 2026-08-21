public import WHATWG_HTML_Shared

extension WHATWG.HTML.ShadowRootClonable {

    public struct Attribute: WHATWG.HTML.BooleanAttribute, CustomStringConvertible {
        public var rawValue: Bool

        public init(value: Bool = true) { self.rawValue = value }
    }
}

extension WHATWG.HTML.ShadowRootClonable.Attribute {

    @inlinable public static var attribute: String { "shadowrootclonable" }
}
