import Testing
import WHATWG_HTML

@Suite struct `Hreflang Test` {
    @Test func `Hreflang attribute should be hreflang`() {
        #expect(WHATWG.HTML.Hreflang.Attribute.attribute == "hreflang")
    }
}
