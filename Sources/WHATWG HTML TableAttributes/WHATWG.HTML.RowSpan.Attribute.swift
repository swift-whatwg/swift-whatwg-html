import Geometry_Primitives
public import WHATWG_HTML_Shared

extension WHATWG.HTML.RowSpan {

    public struct Attribute: WHATWG.HTML.StringAttribute {

        public var height: Int

        @inlinable public init(value: String) {
            self.height = .init(value) ?? 1
        }

        @inlinable public init(_ value: Int) {
            self.height = value
        }
    }
}

extension WHATWG.HTML.RowSpan.Attribute {

    @inlinable public static var attribute: String { "rowspan" }

    @inlinable public var rawValue: String { String(height) }
}

extension WHATWG.HTML.RowSpan.Attribute: ExpressibleByIntegerLiteral {
    @inlinable public init(integerLiteral value: Int) {
        self.height = value
    }
}
