import Testing
import WHATWG_HTML

enum `Allow Tests` {}

extension `Allow Tests` {
    @Suite struct `Allow Test` {
        @Test func `Allow attribute should be allow`() {
            #expect(WHATWG.HTML.Allow.Attribute.attribute == "allow")
        }
    }
}
