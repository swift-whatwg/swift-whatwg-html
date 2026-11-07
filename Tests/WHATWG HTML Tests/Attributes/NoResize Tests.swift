import Testing
import WHATWG_HTML

enum `NoResize Tests` {}

extension `NoResize Tests` {
    @Suite struct `NoResize Test` {
        @Test func `NoResize attribute should be noresize`() {
            #expect(WHATWG.HTML.NoResize.Attribute.attribute == "noresize")
        }
    }
}
