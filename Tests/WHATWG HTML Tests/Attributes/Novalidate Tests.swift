import Testing
import WHATWG_HTML

enum `Novalidate Tests` {}

extension `Novalidate Tests` {
    @Suite struct `Novalidate Test` {
        @Test func `Novalidate attribute should be novalidate`() {
            #expect(WHATWG.HTML.Novalidate.Attribute.attribute == "novalidate")
        }
    }
}
