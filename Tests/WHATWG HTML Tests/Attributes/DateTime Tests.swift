import Testing
import WHATWG_HTML

enum `DateTime Tests` {}

extension `DateTime Tests` {
    @Suite struct `DateTime Test` {
        @Test func `DateTime attribute should be datetime`() {
            #expect(WHATWG.HTML.DateTime.Attribute.attribute == "datetime")
        }
    }
}
