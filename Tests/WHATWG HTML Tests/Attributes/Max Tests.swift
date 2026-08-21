import Testing
import WHATWG_HTML

@Suite struct `Max Test` {
    @Test func `Max attribute should be max`() {
        #expect(WHATWG.HTML.Max.Attribute.attribute == "max")
    }

    @Test func `Max should support integer literal`() {
        let max: WHATWG.HTML.Max.Attribute = 100
        #expect(max.rawValue == "100")
    }

    @Test func `Max should support float literal`() {
        let max: WHATWG.HTML.Max.Attribute = 99.5
        #expect(max.rawValue == "99.5")
    }
}
