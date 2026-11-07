import Testing
import WHATWG_HTML

enum `Allowfullscreen Tests` {}

extension `Allowfullscreen Tests` {
    @Suite struct `Allowfullscreen Test` {
        @Test func `Allowfullscreen attribute should be allowfullscreen`() {
            #expect(WHATWG.HTML.Allowfullscreen.Attribute.attribute == "allowfullscreen")
        }
    }
}
