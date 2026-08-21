public import WHATWG_HTML_Shared

extension WHATWG.HTML.Enterkeyhint {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Enterkeyhint.Attribute {

    @inlinable public static var attribute: String { "enterkeyhint" }
}

extension WHATWG.HTML.Enterkeyhint.Attribute {

    @inlinable public static var enter: Self { "enter" }

    @inlinable public static var done: Self { "done" }

    @inlinable public static var go: Self { "go" }

    @inlinable public static var next: Self { "next" }

    @inlinable public static var previous: Self { "previous" }

    @inlinable public static var search: Self { "search" }

    @inlinable public static var send: Self { "send" }
}

extension WHATWG.HTML.Enterkeyhint.Attribute: CaseIterable {
    public static let allCases: [WHATWG.HTML.Enterkeyhint.Attribute] = [
        .enter, .done, .go, .next, .previous, .search, .send,
    ]
}
