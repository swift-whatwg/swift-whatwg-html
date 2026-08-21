import Testing
import WHATWG_HTML

@Suite struct `FormAction Test` {
    @Test func `FormAction attribute should be formaction`() {
        #expect(WHATWG.HTML.FormAction.Attribute.attribute == "formaction")
    }
}
