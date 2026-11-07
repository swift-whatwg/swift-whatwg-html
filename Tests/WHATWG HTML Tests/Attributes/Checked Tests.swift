import Testing
import WHATWG_HTML

enum `Checked Tests` {}

extension `Checked Tests` {
    @Suite struct `Checked Test` {
        @Test func `Checked attribute should be checked`() {
            #expect(WHATWG.HTML.Checked.Attribute.attribute == "checked")
        }
    }
}
