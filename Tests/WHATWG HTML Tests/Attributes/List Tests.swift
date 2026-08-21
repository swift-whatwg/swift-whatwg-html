import Testing
import WHATWG_HTML

@Suite struct `List Test` {
    @Test func `List attribute should be list`() {
        #expect(WHATWG.HTML.List.Attribute.attribute == "list")
    }
}
