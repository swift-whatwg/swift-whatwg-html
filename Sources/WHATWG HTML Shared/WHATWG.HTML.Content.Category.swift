extension WHATWG.HTML.Content {

    public enum Category: String, Sendable, Hashable, Codable, CaseIterable {

        case metadata

        case flow

        case sectioning

        case heading

        case phrasing

        case embedded

        case interactive

        case palpable

        case `script-supporting`

        case `select element inner content`

        case `optgroup element inner content`

        case `option element inner content`
    }
}
