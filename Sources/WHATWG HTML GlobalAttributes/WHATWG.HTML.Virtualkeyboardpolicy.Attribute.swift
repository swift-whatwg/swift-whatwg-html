public import WHATWG_HTML_Shared

extension WHATWG.HTML.Virtualkeyboardpolicy {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Virtualkeyboardpolicy.Attribute {

    @inlinable public static var attribute: String { "virtualkeyboardpolicy" }
}

extension WHATWG.HTML.Virtualkeyboardpolicy.Attribute {

    @inlinable public static var auto: Self { "auto" }

    @inlinable public static var manual: Self { "manual" }
}

extension WHATWG.HTML.Virtualkeyboardpolicy.Attribute: CaseIterable {
    public static let allCases: [WHATWG.HTML.Virtualkeyboardpolicy.Attribute] = [.auto, .manual]
}
