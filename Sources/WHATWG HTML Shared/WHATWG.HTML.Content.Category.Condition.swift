extension WHATWG.HTML.Content.Category {

    public enum Condition: Sendable, Hashable {

        case `descendant of`(String)

        case `attribute present`(String)

        case `attribute not value`(attribute: String, value: String)

        case `allowed in body`

        case `hierarchically correct`

        case `has descendant`(Set<String>)

        case `children include`(String)
    }
}
