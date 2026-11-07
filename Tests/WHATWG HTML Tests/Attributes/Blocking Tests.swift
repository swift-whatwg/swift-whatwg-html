import Testing
import WHATWG_HTML

enum `Blocking Tests` {}

extension `Blocking Tests` {
    @Suite struct `Blocking Test` {
        @Test func `Blocking attribute should be blocking`() {
            #expect(WHATWG.HTML.Blocking.Attribute.attribute == "blocking")
        }

        @Test func `Blocking should have render preset`() {
            #expect(WHATWG.HTML.Blocking.Attribute.render.rawValue == "render")
        }
    }
}
