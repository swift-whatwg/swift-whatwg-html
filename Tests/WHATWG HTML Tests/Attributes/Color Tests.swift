import Testing
import WHATWG_HTML

@Suite struct `Color Test` {
    @Test func `Color attribute should be color`() {
        #expect(WHATWG.HTML.Color.Attribute.attribute == "color")
    }
}
