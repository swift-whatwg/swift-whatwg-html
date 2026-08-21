import Testing
import WHATWG_HTML

@Suite struct `Minlength Test` {
    @Test func `Minlength attribute should be minlength`() {
        #expect(WHATWG.HTML.Minlength.Attribute.attribute == "minlength")
    }

    @Test func `Minlength should support integer literal`() {
        let minlength: WHATWG.HTML.Minlength.Attribute = 5
        #expect(minlength.value == 5)
        #expect(minlength.description == "5")
    }

    @Test func `Minlength should enforce non-negative values`() {
        let minlength = WHATWG.HTML.Minlength.Attribute(-5)
        #expect(minlength.value == 0)
    }

    @Test func `Minlength convenience properties and methods`() {
        #expect(WHATWG.HTML.Minlength.Attribute.none.value == 0)
        #expect(WHATWG.HTML.Minlength.Attribute.characters(10).value == 10)
    }
}
