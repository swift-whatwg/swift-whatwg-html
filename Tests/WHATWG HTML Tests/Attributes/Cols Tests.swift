import Testing
import WHATWG_HTML

@Suite struct `Cols Test` {
    @Test func `Cols attribute should be cols`() {
        #expect(WHATWG.HTML.Cols.Attribute.attribute == "cols")
    }
}
