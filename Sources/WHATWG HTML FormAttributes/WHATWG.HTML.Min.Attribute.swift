public import ISO_8601
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Min {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }

        public init(dateTime: ISO_8601.DateTime) {
            self.rawValue = ISO_8601.DateTime.Formatter.format(dateTime)
        }
    }
}

extension WHATWG.HTML.Min.Attribute {

    @inlinable public static var attribute: String { "min" }
}

extension WHATWG.HTML.Min.Attribute {

    public enum DateFormat {

        case fullDate

        case month

        case week

        case time

        case dateTimeLocal
    }

    public static let zero = WHATWG.HTML.Min.Attribute(0)
}

extension WHATWG.HTML.Min.Attribute: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) { self.rawValue = String(value) }
}

extension WHATWG.HTML.Min.Attribute: ExpressibleByFloatLiteral {
    public init(floatLiteral value: FloatLiteralType) { self.rawValue = String(value) }
}

extension WHATWG.HTML.Min.Attribute {

    public static func date(_ year: Int, month: Int, day: Int) -> WHATWG.HTML.Min.Attribute {
        return WHATWG.HTML.Min.Attribute(String.format(year: year, month: month, day: day))
    }

    public static func month(_ year: Int, month: Int) -> WHATWG.HTML.Min.Attribute {
        return WHATWG.HTML.Min.Attribute(String.format(year: year, month: month))
    }

    public static func week(_ year: Int, week: Int) -> WHATWG.HTML.Min.Attribute {
        return WHATWG.HTML.Min.Attribute(String.format(year: year, week: week))
    }

    public static func time(_ hour: Int, minute: Int) -> WHATWG.HTML.Min.Attribute {
        return WHATWG.HTML.Min.Attribute(String.format(hour: hour, minute: minute))
    }

    public static func dateTimeLocal(
        _ year: Int,
        month: Int,
        day: Int,
        hour: Int,
        minute: Int
    ) -> WHATWG.HTML.Min.Attribute {
        return WHATWG.HTML.Min.Attribute(
            String.format(year: year, month: month, day: day, hour: hour, minute: minute)
        )
    }
}
