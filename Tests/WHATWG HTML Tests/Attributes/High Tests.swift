import Testing
import WHATWG_HTML

@Suite struct `High Test` {
    @Test func `High attribute should be high`() {
        #expect(WHATWG.HTML.High.Attribute.attribute == "high")
    }

    @Test func `High should support integer literal`() {
        let high: WHATWG.HTML.High.Attribute = 75
        #expect(high.value == 75.0)
        #expect(high.description == "75.0")
    }

    @Test func `High should support float literal`() {
        let high: WHATWG.HTML.High.Attribute = 67.5
        #expect(high.value == 67.5)
        #expect(high.description == "67.5")
    }

    @Test func `High init with double`() {
        let high = WHATWG.HTML.High.Attribute(90.0)
        #expect(high.value == 90.0)
        #expect(high.description == "90.0")
    }
}
