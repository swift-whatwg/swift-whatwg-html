import Geometry_Primitives
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Span {

    public struct Attribute: WHATWG.HTML.StringAttribute, ExpressibleByIntegerLiteral {

        public var width: Int

        @inlinable public init(value: String) {
            let intValue = Int(value) ?? 1
            precondition(intValue > 0, "Span value must be a positive integer")
            self.width = intValue
        }

        @inlinable public init(_ value: Int) {
            precondition(value > 0, "Span value must be a positive integer")
            self.width = value
        }

        @inlinable public init(integerLiteral value: Int) {
            precondition(value > 0, "Span value must be a positive integer")
            self.width = value
        }
    }
}

extension WHATWG.HTML.Span.Attribute {

    @inlinable public static var attribute: String { "span" }

    @inlinable public var rawValue: String { width.description }
}
