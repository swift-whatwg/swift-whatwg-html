import Testing
import WHATWG_HTML

@Suite struct `Required Test` {
    @Test func `Required attribute should be required`() {
        #expect(WHATWG.HTML.Required.Attribute.attribute == "required")
    }
}
