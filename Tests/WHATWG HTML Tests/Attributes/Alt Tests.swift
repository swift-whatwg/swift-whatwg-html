import Testing
import WHATWG_HTML

@Suite struct `Alt Test` {
    @Test func `Alt attribute should be alt`() {
        #expect(WHATWG.HTML.Alt.Attribute.attribute == "alt")
    }
}
