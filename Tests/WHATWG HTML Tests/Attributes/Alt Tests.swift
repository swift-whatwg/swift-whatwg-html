import Testing
import WHATWG_HTML

enum `Alt Tests` {}

extension `Alt Tests` {
    @Suite struct `Alt Test` {
        @Test func `Alt attribute should be alt`() {
            #expect(WHATWG.HTML.Alt.Attribute.attribute == "alt")
        }
    }
}
