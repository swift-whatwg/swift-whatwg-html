extension WHATWG.HTML.Content {

    public enum Model: Sendable, Equatable, Hashable, Codable {

        case nothing

        case text

        case categories(Set<WHATWG.HTML.Content.Category>)

        case transparent
    }
}

extension WHATWG.HTML.Content.Model {

    @inlinable public static func category(_ category: WHATWG.HTML.Content.Category) -> Self {
        .categories([category])
    }

    @inlinable public static var flow: Self { .category(.flow) }

    @inlinable public static var phrasing: Self { .category(.phrasing) }

    @inlinable public static var metadata: Self { .category(.metadata) }
}
