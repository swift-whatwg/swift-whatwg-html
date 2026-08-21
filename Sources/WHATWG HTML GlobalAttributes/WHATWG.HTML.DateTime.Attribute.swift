import Format_Primitives
public import ISO_8601
import Radix_Formatter_Primitives
public import WHATWG_HTML_Shared

extension WHATWG.HTML.DateTime {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }

        public init(dateTime: ISO_8601.DateTime) {
            self.rawValue = ISO_8601.DateTime.Formatter.format(dateTime)
        }
    }
}

extension WHATWG.HTML.DateTime.Attribute {

    @inlinable public static var attribute: String { "datetime" }
}

extension WHATWG.HTML.DateTime.Attribute {

    public static func date(
        year: Int,
        month: Int,
        day: Int
    ) throws(ISO_8601.Date.Error) -> WHATWG.HTML.DateTime.Attribute {
        let dt = try ISO_8601.DateTime(year: year, month: month, day: day)
        return WHATWG.HTML.DateTime.Attribute(dateTime: dt)
    }

    public static func dateTime(
        year: Int,
        month: Int,
        day: Int,
        hour: Int,
        minute: Int,
        second: Int = 0
    ) throws(ISO_8601.Date.Error) -> WHATWG.HTML.DateTime.Attribute {
        let dt = try ISO_8601.DateTime(
            year: year,
            month: month,
            day: day,
            hour: hour,
            minute: minute,
            second: second
        )
        return WHATWG.HTML.DateTime.Attribute(dateTime: dt)
    }

    public static func dateTimeWithOffset(
        year: Int,
        month: Int,
        day: Int,
        hour: Int,
        minute: Int,
        second: Int = 0,
        timezoneOffsetSeconds: Int
    ) throws(ISO_8601.Date.Error) -> WHATWG.HTML.DateTime.Attribute {
        let dt = try ISO_8601.DateTime(
            year: year,
            month: month,
            day: day,
            hour: hour,
            minute: minute,
            second: second,
            timezoneOffsetSeconds: timezoneOffsetSeconds
        )
        return WHATWG.HTML.DateTime.Attribute(dateTime: dt)
    }

    public static func utc(
        year: Int,
        month: Int,
        day: Int,
        hour: Int,
        minute: Int,
        second: Int = 0
    ) throws(ISO_8601.Date.Error) -> WHATWG.HTML.DateTime.Attribute {
        let dt = try ISO_8601.DateTime(
            year: year,
            month: month,
            day: day,
            hour: hour,
            minute: minute,
            second: second
        )
        return WHATWG.HTML.DateTime.Attribute(dateTime: dt)
    }

    public static func yearMonth(year: Int, month: Int) -> WHATWG.HTML.DateTime.Attribute {
        WHATWG.HTML.DateTime.Attribute(
            "\(year.formatted(.decimal.zeroPadded(width: 4)))-\(month.formatted(.decimal.zeroPadded(width: 2)))"
        )
    }

    public static func year(_ year: Int) -> WHATWG.HTML.DateTime.Attribute {
        WHATWG.HTML.DateTime.Attribute(year.formatted(.decimal.zeroPadded(width: 4)))
    }

    public static func time(
        hour: Int,
        minute: Int,
        second: Int = 0
    ) -> WHATWG.HTML.DateTime.Attribute {
        let h = hour.formatted(.decimal.zeroPadded(width: 2))
        let m = minute.formatted(.decimal.zeroPadded(width: 2))
        if second > 0 {
            let s = second.formatted(.decimal.zeroPadded(width: 2))
            return WHATWG.HTML.DateTime.Attribute("\(h):\(m):\(s)")
        } else {
            return WHATWG.HTML.DateTime.Attribute("\(h):\(m)")
        }
    }

    public static func duration(_ iso8601Duration: String) -> WHATWG.HTML.DateTime.Attribute {
        WHATWG.HTML.DateTime.Attribute(iso8601Duration)
    }
}
