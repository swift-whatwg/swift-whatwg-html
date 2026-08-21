import Testing
import WHATWG_HTML

@Suite struct `Height Test` {
    @Test func `Height attribute should be height`() {
        #expect(WHATWG.HTML.Height.Attribute.attribute == "height")
    }

    @Test func `Height should support integer literal`() {
        let height: WHATWG.HTML.Height.Attribute = 300
        #expect(height.rawValue == "300")
    }
}
