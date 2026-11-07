import Testing
import WHATWG_HTML

enum `Face Tests` {}

extension `Face Tests` {
    @Suite struct `Face Test` {
        @Test func `Face attribute should be face`() {
            #expect(WHATWG.HTML.Face.Attribute.attribute == "face")
        }
    }
}
