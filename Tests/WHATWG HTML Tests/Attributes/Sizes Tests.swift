import Testing
import WHATWG_HTML

@Suite struct `Sizes Test` {
    @Test func `Sizes attribute should be sizes`() {
        #expect(WHATWG.HTML.Sizes.Attribute.attribute == "sizes")
    }
}
