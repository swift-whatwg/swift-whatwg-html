import Testing
import WHATWG_HTML

enum `Cols Tests` {}

extension `Cols Tests` {
    @Suite struct `Cols Test` {
        @Test func `Cols attribute should be cols`() {
            #expect(WHATWG.HTML.Cols.Attribute.attribute == "cols")
        }
    }
}
