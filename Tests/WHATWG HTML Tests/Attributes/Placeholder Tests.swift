import Testing
import WHATWG_HTML

@Suite struct `Placeholder Test` {
    @Test func `Placeholder attribute should be placeholder`() {
        #expect(WHATWG.HTML.Placeholder.Attribute.attribute == "placeholder")
    }

    @Test func `Placeholder convenience properties`() {
        #expect(WHATWG.HTML.Placeholder.Attribute.email.rawValue == "email")
        #expect(WHATWG.HTML.Placeholder.Attribute.phone.rawValue == "phone")
        #expect(WHATWG.HTML.Placeholder.Attribute.name.rawValue == "name")
        #expect(WHATWG.HTML.Placeholder.Attribute.search.rawValue == "search")
        #expect(WHATWG.HTML.Placeholder.Attribute.url.rawValue == "url")
    }
}
