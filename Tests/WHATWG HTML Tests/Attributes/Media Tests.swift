import Testing
import WHATWG_HTML

enum `Media Tests` {}

extension `Media Tests` {
    @Suite struct `Media Test` {
        @Test func `Media attribute should be media`() {
            #expect(WHATWG.HTML.Media.Attribute.attribute == "media")
        }
    }
}
