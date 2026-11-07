import Testing
import WHATWG_HTML

enum `Hreflang Tests` {}

extension `Hreflang Tests` {
    @Suite struct `Hreflang Test` {
        @Test func `Hreflang attribute should be hreflang`() {
            #expect(WHATWG.HTML.Hreflang.Attribute.attribute == "hreflang")
        }
    }
}
