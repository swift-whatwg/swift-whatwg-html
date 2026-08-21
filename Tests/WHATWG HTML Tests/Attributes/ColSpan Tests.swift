import Testing
import WHATWG_HTML

@Suite struct `ColSpan Test` {
    @Test func `ColSpan attribute should be colspan`() {
        #expect(WHATWG.HTML.ColSpan.Attribute.attribute == "colspan")
    }

    @Test func `ColSpan should support integer literal`() {
        let colSpan: WHATWG.HTML.ColSpan.Attribute = 3
        #expect(colSpan.rawValue == "3")
    }

    @Test func `ColSpan description should equal rawValue`() {
        let colSpan = WHATWG.HTML.ColSpan.Attribute(value: "2")
        #expect(colSpan.description == "2")
    }
}
