import Testing
import WHATWG_HTML

enum `Autoplay Tests` {}

extension `Autoplay Tests` {
    @Suite struct `Autoplay Test` {
        @Test func `Autoplay attribute should be autoplay`() {
            #expect(WHATWG.HTML.Autoplay.Attribute.attribute == "autoplay")
        }
    }
}
