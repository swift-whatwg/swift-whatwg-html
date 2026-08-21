extension WHATWG.HTML {

    public struct Content: Sendable, Equatable, Hashable, Codable {

        public var model: Model

        public init(model: Model) { self.model = model }
    }
}

extension WHATWG.HTML.Content {

    public static let transparentElements: Set<String> = [
        "a", "ins", "del", "object", "video", "audio", "map", "noscript", "canvas", "slot",
    ]

    @inlinable public static func isTransparent(_ element: String) -> Bool {
        transparentElements.contains(element)
    }
}

extension WHATWG.HTML.Content {

    public static let paragraphStraddlingElements: Set<String> = ["a", "ins", "del", "map"]
}

extension WHATWG.HTML.Content.Model {

    public func allows(category: WHATWG.HTML.Content.Category) -> Bool {
        switch self {
        case .nothing: return false
        case .text: return false
        case .categories(let allowed): return allowed.contains(category)

        case .transparent:

            return true
        }
    }

    public var allowsText: Bool {
        switch self {
        case .nothing: return false
        case .text: return true

        case .categories(let categories):
            return categories.contains(.phrasing) || categories.contains(.flow)

        case .transparent: return true
        }
    }
}

extension WHATWG.HTML.Content.Model: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: WHATWG.HTML.Content.Category...) {
        self = .categories(Set(elements))
    }
}
