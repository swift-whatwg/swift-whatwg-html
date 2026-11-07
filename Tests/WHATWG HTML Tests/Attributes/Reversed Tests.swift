import Testing
import WHATWG_HTML

enum `Reversed Tests` {}

extension `Reversed Tests` {
    @Suite struct `Reversed Test` {
        @Test func `Reversed attribute should be reversed`() {
            #expect(WHATWG.HTML.Reversed.Attribute.attribute == "reversed")
        }
    }
}
