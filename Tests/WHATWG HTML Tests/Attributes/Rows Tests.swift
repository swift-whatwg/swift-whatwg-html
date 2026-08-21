import Testing
import WHATWG_HTML

@Suite struct `Rows Test` {
    @Test func `Rows attribute should be rows`() {
        #expect(WHATWG.HTML.Rows.Attribute.attribute == "rows")
    }

    @Test func `Rows should support integer literal`() {
        let rows: WHATWG.HTML.Rows.Attribute = 5
        #expect(rows.rawValue == "5")
    }
}
