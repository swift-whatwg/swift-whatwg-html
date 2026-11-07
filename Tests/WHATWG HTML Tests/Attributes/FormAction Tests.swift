import Testing
import WHATWG_HTML

enum `FormAction Tests` {}

extension `FormAction Tests` {
    @Suite struct `FormAction Test` {
        @Test func `FormAction attribute should be formaction`() {
            #expect(WHATWG.HTML.FormAction.Attribute.attribute == "formaction")
        }
    }
}
