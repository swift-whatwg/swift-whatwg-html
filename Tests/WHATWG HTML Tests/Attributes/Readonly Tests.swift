import Testing
import WHATWG_HTML

enum `Readonly Tests` {}

extension `Readonly Tests` {
    @Suite struct `Readonly Test` {
        @Test func `Readonly attribute should be readonly`() {
            #expect(WHATWG.HTML.Readonly.Attribute.attribute == "readonly")
        }
    }
}
