extension String {
    public static func format(year: Int, month: Int, day: Int) -> String {
        return
            "\(String(year).padded(to: 4, with: "0"))-\(String(month).padded(to: 2, with: "0"))-\(String(day).padded(to: 2, with: "0"))"
    }

    public static func format(year: Int, month: Int) -> String {
        return "\(String(year).padded(to: 4, with: "0"))-\(String(month).padded(to: 2, with: "0"))"
    }

    public static func format(year: Int, week: Int) -> String {
        return "\(String(year).padded(to: 4, with: "0"))-W\(String(week).padded(to: 2, with: "0"))"
    }

    public static func format(hour: Int, minute: Int) -> String {
        return "\(String(hour).padded(to: 2, with: "0")):\(String(minute).padded(to: 2, with: "0"))"
    }

    public static func format(year: Int, month: Int, day: Int, hour: Int, minute: Int) -> String {
        return
            "\(String(year).padded(to: 4, with: "0"))-\(String(month).padded(to: 2, with: "0"))-\(String(day).padded(to: 2, with: "0"))T\(String(hour).padded(to: 2, with: "0")):\(String(minute).padded(to: 2, with: "0"))"
    }

    public func padded(to width: Int, with character: Character) -> String {
        let padding = max(0, width - self.count)
        return String(repeating: character, count: padding) + self
    }
}
