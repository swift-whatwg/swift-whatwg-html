import Testing
import WHATWG_HTML

enum `Cite Tests` {}

extension `Cite Tests` {
    @Suite struct `Cite Test` {
        @Test func `Cite attribute should be cite`() {
            #expect(WHATWG.HTML.Cite.Attribute.attribute == "cite")
        }
    }
}
