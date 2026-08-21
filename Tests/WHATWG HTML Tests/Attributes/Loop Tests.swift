import Testing
import WHATWG_HTML

@Suite struct `Loop Test` {
    @Test func `Loop attribute should be loop`() {
        #expect(WHATWG.HTML.Loop.Attribute.attribute == "loop")
    }
}
