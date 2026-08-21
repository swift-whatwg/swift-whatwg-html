import Testing
import WHATWG_HTML

@Suite struct `Muted Test` {
    @Test func `Muted attribute should be muted`() {
        #expect(WHATWG.HTML.Muted.Attribute.attribute == "muted")
    }
}
