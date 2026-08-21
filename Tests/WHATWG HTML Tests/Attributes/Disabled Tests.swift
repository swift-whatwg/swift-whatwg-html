import Testing
import WHATWG_HTML

@Suite struct `Disabled Test` {
    @Test func `Disabled attribute should be disabled`() {
        #expect(WHATWG.HTML.Disabled.Attribute.attribute == "disabled")
    }
}
