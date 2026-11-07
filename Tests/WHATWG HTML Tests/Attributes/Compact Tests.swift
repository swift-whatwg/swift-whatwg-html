import Testing
import WHATWG_HTML

enum `Compact Tests` {}

extension `Compact Tests` {
    @Suite struct `Compact Test` {
        @Test func `Compact attribute should be compact`() {
            #expect(WHATWG.HTML.Compact.Attribute.attribute == "compact")
        }
    }
}
