import Testing
import WHATWG_HTML

@Suite struct `Checked Test` {
    @Test func `Checked attribute should be checked`() {
        #expect(WHATWG.HTML.Checked.Attribute.attribute == "checked")
    }
}
