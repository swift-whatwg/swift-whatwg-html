import Testing
import WHATWG_HTML

enum `Sizes Tests` {}

extension `Sizes Tests` {
    @Suite struct `Sizes Test` {
        @Test func `Sizes attribute should be sizes`() {
            #expect(WHATWG.HTML.Sizes.Attribute.attribute == "sizes")
        }
    }
}
