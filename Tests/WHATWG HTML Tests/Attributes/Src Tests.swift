import Testing
import WHATWG_HTML

enum `Src Tests` {}

extension `Src Tests` {
    @Suite struct `Src Test` {
        @Test func `Src attribute should be src`() {
            #expect(WHATWG.HTML.Src.Attribute.attribute == "src")
        }
    }
}
