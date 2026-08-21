import Testing
import WHATWG_HTML

@Suite struct `RowSpan Test` {
    @Test func `RowSpan attribute should be rowspan`() {
        #expect(WHATWG.HTML.RowSpan.Attribute.attribute == "rowspan")
    }

    @Test func `RowSpan should support integer literal`() {
        let rowspan: WHATWG.HTML.RowSpan.Attribute = 3
        #expect(rowspan.rawValue == "3")
    }
}
