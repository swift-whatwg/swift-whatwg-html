import Testing
import WHATWG_HTML

enum `Muted Tests` {}

extension `Muted Tests` {
    @Suite struct `Muted Test` {
        @Test func `Muted attribute should be muted`() {
            #expect(WHATWG.HTML.Muted.Attribute.attribute == "muted")
        }
    }
}
