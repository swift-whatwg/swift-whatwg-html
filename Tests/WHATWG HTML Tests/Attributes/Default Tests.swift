import Testing
import WHATWG_HTML

enum `Default Tests` {}

extension `Default Tests` {
    @Suite struct `Default Test` {
        @Test func `Default attribute should be default`() {
            #expect(WHATWG.HTML.Default.Attribute.attribute == "default")
        }
    }
}
