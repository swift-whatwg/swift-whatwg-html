import Testing
import WHATWG_HTML

@Suite struct `Readonly Test` {
    @Test func `Readonly attribute should be readonly`() {
        #expect(WHATWG.HTML.Readonly.Attribute.attribute == "readonly")
    }
}
