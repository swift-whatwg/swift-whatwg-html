import Testing
import WHATWG_HTML

enum `Label Tests` {}

extension `Label Tests` {
    @Suite struct `Label Test` {
        @Test func `Label attribute should be label`() {
            #expect(WHATWG.HTML.Label.Attribute.attribute == "label")
        }
    }
}
