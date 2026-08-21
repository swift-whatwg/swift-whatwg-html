import Testing
import WHATWG_HTML

@Suite struct `Multiple Test` {
    @Test func `Multiple attribute should be multiple`() {
        #expect(WHATWG.HTML.Multiple.Attribute.attribute == "multiple")
    }
}
