import Testing
import WHATWG_HTML

@Suite struct `FormNovalidate Test` {
    @Test func `FormNovalidate attribute should be formnovalidate`() {
        #expect(WHATWG.HTML.FormNovalidate.Attribute.attribute == "formnovalidate")
    }
}
