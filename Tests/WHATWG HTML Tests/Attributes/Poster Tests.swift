import Testing
import WHATWG_HTML

@Suite struct `Poster Test` {
    @Test func `Poster attribute should be poster`() {
        #expect(WHATWG.HTML.Poster.Attribute.attribute == "poster")
    }
}
