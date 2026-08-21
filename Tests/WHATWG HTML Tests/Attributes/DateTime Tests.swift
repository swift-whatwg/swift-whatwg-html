import Testing
import WHATWG_HTML

@Suite struct `DateTime Test` {
    @Test func `DateTime attribute should be datetime`() {
        #expect(WHATWG.HTML.DateTime.Attribute.attribute == "datetime")
    }
}
