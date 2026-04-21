// ===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
// ===----------------------------------------------------------------------===//

import Format_Primitives
import Binary_Primitives
public import ISO_8601
public import WHATWG_HTML_Shared

/// Represents the HTML `datetime` attribute used with the `<time>`, `<ins>`, and `<del>` elements.
///
/// The `datetime` attribute provides a machine-readable format for dates and times per ISO 8601.
///
/// ## Academic Correctness
///
/// Per WHATWG HTML specification, the datetime attribute must be a valid datetime string
/// as defined by ISO 8601. This implementation uses `ISO_8601.DateTime` to ensure academic
/// correctness per ISO 8601:2019 specifications.
///
/// ## Valid DateTime Formats (ISO 8601)
///
/// - **Year**: YYYY (e.g., "2024")
/// - **Year-month**: YYYY-MM (e.g., "2024-01")
/// - **Date**: YYYY-MM-DD (e.g., "2024-01-15")
/// - **Time**: HH:MM or HH:MM:SS (e.g., "20:00", "20:00:30")
/// - **Local date and time**: YYYY-MM-DDTHH:MM (e.g., "2024-01-15T20:00")
/// - **Global date and time**: With timezone offset (e.g., "2024-01-15T20:00Z", "2024-01-15T20:00+05:30")
/// - **Week**: YYYY-Www (e.g., "2024-W03")
/// - **Durations**: PNNT... (e.g., "PT2H30M" for 2 hours 30 minutes)
///
/// ## Usage Notes
///
/// - For `<time>` element: Represents the element's datetime value
/// - For `<ins>` and `<del>`: Indicates when the change was made
/// - The attribute value must be a valid ISO 8601 datetime string
/// - Human-readable content goes inside the element, machine-readable datetime in attribute
///
/// ## Examples
///
/// ```swift
/// // Using ISO_8601.DateTime
/// let dt = try! ISO_8601.DateTime(year: 2024, month: 7, day: 15, hour: 14, minute: 30)
/// HTML.time.datetime(DateTime(dateTime: dt)).text("July 15, 2024 at 2:30 PM")
///
/// // Using string literal (ISO 8601 format)
/// HTML.time.datetime("2024-07-15T14:30:00Z").text("July 15, 2024")
///
/// // Date only
/// HTML.time.datetime("2024-07-15").text("July 15")
///
/// // Time only
/// HTML.time.datetime("20:00").text("8:00 PM")
///
/// // Duration
/// HTML.time.datetime("PT2H30M").text("2 hours 30 minutes")
/// ```
@dynamicMemberLookup public struct DateTime: WHATWG_HTML.StringAttribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "datetime" }

    /// The attribute value (ISO 8601 string)
    public let rawValue: String

    /// Initialize with a string value
    public init(value: String) { self.rawValue = value }

    /// Initialize with an ISO 8601 DateTime
    public init(dateTime: ISO_8601.DateTime) {
        self.rawValue = ISO_8601.DateTime.Formatter.format(dateTime)
    }
}

// MARK: - Convenience Constructors

extension DateTime {
    /// Create a datetime for a specific date
    public static func date(year: Int, month: Int, day: Int) throws(ISO_8601.Date.Error) -> DateTime {
        let dt = try ISO_8601.DateTime(year: year, month: month, day: day)
        return DateTime(dateTime: dt)
    }

    /// Create a datetime for a specific date and time (local)
    public static func dateTime(
        year: Int,
        month: Int,
        day: Int,
        hour: Int,
        minute: Int,
        second: Int = 0
    ) throws(ISO_8601.Date.Error) -> DateTime {
        let dt = try ISO_8601.DateTime(
            year: year,
            month: month,
            day: day,
            hour: hour,
            minute: minute,
            second: second
        )
        return DateTime(dateTime: dt)
    }

    /// Create a datetime for a specific date and time with timezone offset
    public static func dateTimeWithOffset(
        year: Int,
        month: Int,
        day: Int,
        hour: Int,
        minute: Int,
        second: Int = 0,
        timezoneOffsetSeconds: Int
    ) throws(ISO_8601.Date.Error) -> DateTime {
        let dt = try ISO_8601.DateTime(
            year: year,
            month: month,
            day: day,
            hour: hour,
            minute: minute,
            second: second,
            timezoneOffsetSeconds: timezoneOffsetSeconds
        )
        return DateTime(dateTime: dt)
    }

    /// Create a datetime for UTC (Z timezone)
    public static func utc(
        year: Int,
        month: Int,
        day: Int,
        hour: Int,
        minute: Int,
        second: Int = 0
    ) throws(ISO_8601.Date.Error) -> DateTime {
        let dt = try ISO_8601.DateTime(
            year: year,
            month: month,
            day: day,
            hour: hour,
            minute: minute,
            second: second
        )
        return DateTime(dateTime: dt)
    }

    /// Create a year-month datetime
    public static func yearMonth(year: Int, month: Int) -> DateTime {
        DateTime(
            "\(year.formatted(.number.zeroPadded(width: 4)))-\(month.formatted(.number.zeroPadded(width: 2)))"
        )
    }

    /// Create a year-only datetime
    public static func year(_ year: Int) -> DateTime {
        DateTime(year.formatted(.number.zeroPadded(width: 4)))
    }

    /// Create a time-only datetime
    public static func time(hour: Int, minute: Int, second: Int = 0) -> DateTime {
        let h = hour.formatted(.number.zeroPadded(width: 2))
        let m = minute.formatted(.number.zeroPadded(width: 2))
        if second > 0 {
            let s = second.formatted(.number.zeroPadded(width: 2))
            return DateTime("\(h):\(m):\(s)")
        } else {
            return DateTime("\(h):\(m)")
        }
    }

    /// Create a duration (e.g., "PT2H30M" for 2 hours 30 minutes)
    public static func duration(_ iso8601Duration: String) -> DateTime { DateTime(iso8601Duration) }
}
