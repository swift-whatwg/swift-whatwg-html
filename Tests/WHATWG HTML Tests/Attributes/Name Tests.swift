import Testing
import WHATWG_HTML

@Suite struct `Name Test` {
    @Test func `Name attribute should be name`() {
        #expect(WHATWG.HTML.Name.Attribute.attribute == "name")
    }
}
