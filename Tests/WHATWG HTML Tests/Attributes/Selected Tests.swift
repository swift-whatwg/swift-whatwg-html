import Testing
import WHATWG_HTML

enum `Selected Tests` {}

extension `Selected Tests` {
    @Suite struct `Selected Test` {
        @Test func `Selected attribute should be selected`() {
            #expect(WHATWG.HTML.Selected.Attribute.attribute == "selected")
        }
    }
}
