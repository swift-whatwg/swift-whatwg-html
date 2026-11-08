public import WHATWG_HTML_Shared

extension WHATWG.HTML.Elementtiming.Attribute {
    public struct Category: Sendable, Hashable, ExpressibleByStringLiteral, CustomStringConvertible {
        public var value: String

        public init(_ value: String) { self.value = value }

        public init(stringLiteral value: String) { self.value = value }
    }
}
