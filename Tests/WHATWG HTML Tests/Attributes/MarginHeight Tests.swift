import Testing
import WHATWG_HTML

@Suite struct `MarginHeight Test` {
    @Test func `MarginHeight attribute should be marginheight`() {
        #expect(WHATWG.HTML.MarginHeight.Attribute.attribute == "marginheight")
    }

    @Test func `MarginHeight should support integer literal`() {
        let marginHeight: WHATWG.HTML.MarginHeight.Attribute = 10
        #expect(marginHeight.rawValue == "10")
    }
}
