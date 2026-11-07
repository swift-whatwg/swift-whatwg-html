import Testing
import WHATWG_HTML

enum `Ismap Tests` {}

extension `Ismap Tests` {
    @Suite struct `Ismap Test` {
        @Test func `Ismap attribute should be ismap`() {
            #expect(WHATWG.HTML.Ismap.Attribute.attribute == "ismap")
        }
    }
}
