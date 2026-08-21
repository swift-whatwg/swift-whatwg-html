import Testing
import WHATWG_HTML

@Suite struct `Face Test` {
    @Test func `Face attribute should be face`() {
        #expect(WHATWG.HTML.Face.Attribute.attribute == "face")
    }
}
