import Testing
import WHATWG_HTML

enum `Poster Tests` {}

extension `Poster Tests` {
    @Suite struct `Poster Test` {
        @Test func `Poster attribute should be poster`() {
            #expect(WHATWG.HTML.Poster.Attribute.attribute == "poster")
        }
    }
}
