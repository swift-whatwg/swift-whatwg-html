import Testing
import WHATWG_HTML

@Suite struct `Reversed Test` {
    @Test func `Reversed attribute should be reversed`() {
        #expect(WHATWG.HTML.Reversed.Attribute.attribute == "reversed")
    }
}
