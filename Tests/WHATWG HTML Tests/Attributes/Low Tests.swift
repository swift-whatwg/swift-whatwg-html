import Testing
import WHATWG_HTML

@Suite struct `Low Test` {
    @Test func `Low attribute should be low`() {
        #expect(WHATWG.HTML.Low.Attribute.attribute == "low")
    }

    @Test func `Low should support integer literal`() {
        let low: WHATWG.HTML.Low.Attribute = 25
        #expect(low.value == 25.0)
        #expect(low.description == "25.0")
    }

    @Test func `Low should support float literal`() {
        let low: WHATWG.HTML.Low.Attribute = 33.3
        #expect(low.value == 33.3)
        #expect(low.description == "33.3")
    }

    @Test func `Low init with double`() {
        let low = WHATWG.HTML.Low.Attribute(15.5)
        #expect(low.value == 15.5)
        #expect(low.description == "15.5")
    }
}
