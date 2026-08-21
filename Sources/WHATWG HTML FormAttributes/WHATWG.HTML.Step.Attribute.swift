public import WHATWG_HTML_Shared

extension WHATWG.HTML.Step {

    @dynamicMemberLookup
    public enum Attribute: WHATWG.HTML.StringAttribute, ExpressibleByFloatLiteral,
        ExpressibleByIntegerLiteral
    {

        case value(Double)

        case any

        public init(value: String) {
            if value == "any" {
                self = .any
            } else if let doubleValue = Double(value) {
                self = .value(doubleValue)
            } else {

                self = .any
            }
        }

        public init(floatLiteral value: Double) { self = .value(value) }

        public init(integerLiteral value: IntegerLiteralType) { self = .value(Double(value)) }
    }
}

extension WHATWG.HTML.Step.Attribute {
    @inlinable public static var attribute: String { "step" }

    public var rawValue: String { description }

    public var description: String {
        switch self {
        case .value(let value): return value.description
        case .any: return "any"
        }
    }

    public static let integer: Self = 1

    public static let tenth: Self = 0.1

    public static let hundredth: Self = 0.01

    public static let thousandth: Self = 0.001

    public static let money: Self = 0.01

    public static let weekly: Self = 7
}
