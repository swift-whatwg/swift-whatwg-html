import Testing
import WHATWG_HTML

@Suite struct `Label Test` {
    @Test func `Label attribute should be label`() {
        #expect(WHATWG.HTML.Label.Attribute.attribute == "label")
    }
}
