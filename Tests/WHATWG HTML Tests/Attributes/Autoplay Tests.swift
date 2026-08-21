import Testing
import WHATWG_HTML

@Suite struct `Autoplay Test` {
    @Test func `Autoplay attribute should be autoplay`() {
        #expect(WHATWG.HTML.Autoplay.Attribute.attribute == "autoplay")
    }
}
