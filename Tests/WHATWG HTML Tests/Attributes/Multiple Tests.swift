import Testing
import WHATWG_HTML

enum `Multiple Tests` {}

extension `Multiple Tests` {
    @Suite struct `Multiple Test` {
        @Test func `Multiple attribute should be multiple`() {
            #expect(WHATWG.HTML.Multiple.Attribute.attribute == "multiple")
        }
    }
}
