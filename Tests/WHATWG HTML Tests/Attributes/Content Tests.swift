import Testing
import WHATWG_HTML

@Suite struct `Content Test` {
    @Test func `Content attribute should be content`() {
        #expect(WHATWG.HTML.Content.Attribute.attribute == "content")
    }
}
