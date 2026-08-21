import Testing
import WHATWG_HTML

@Suite struct `Defer Test` {
    @Test func `Defer attribute should be defer`() {
        #expect(WHATWG.HTML.Defer.Attribute.attribute == "defer")
    }
}
