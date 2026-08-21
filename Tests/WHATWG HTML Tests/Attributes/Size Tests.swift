import Testing
import WHATWG_HTML

@Suite struct `Size Test` {
    @Test func `Size attribute should be size`() {
        #expect(WHATWG.HTML.Size.Attribute.attribute == "size")
    }

    @Test func `Size convenience properties`() {
        #expect(WHATWG.HTML.Size.Attribute.standardTextField.rawValue == "30")
        #expect(WHATWG.HTML.Size.Attribute.smallTextField.rawValue == "10")
        #expect(WHATWG.HTML.Size.Attribute.largeTextField.rawValue == "50")
        #expect(WHATWG.HTML.Size.Attribute.standardListbox.rawValue == "5")
    }

    @Test func `Size should support integer literal`() {
        let size: WHATWG.HTML.Size.Attribute = 25
        #expect(size.rawValue == "25")
    }

    @Test func `Size should enforce minimum value of 1`() {
        let size: WHATWG.HTML.Size.Attribute = 0
        #expect(size.rawValue == "1")
    }
}
