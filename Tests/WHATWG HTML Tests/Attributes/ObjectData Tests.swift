import Testing
import WHATWG_HTML

@Suite struct `ObjectData Test` {
    @Test func `ObjectData attribute should be data`() {
        #expect(WHATWG.HTML.ExternalObject.Data.Attribute.attribute == "data")
    }
}
