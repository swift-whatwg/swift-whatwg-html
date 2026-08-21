import Testing
import WHATWG_HTML

@Suite struct `Allowfullscreen Test` {
    @Test func `Allowfullscreen attribute should be allowfullscreen`() {
        #expect(WHATWG.HTML.Allowfullscreen.Attribute.attribute == "allowfullscreen")
    }
}
