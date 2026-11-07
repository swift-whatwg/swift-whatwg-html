import Testing
import WHATWG_HTML

enum `Preload Tests` {}

extension `Preload Tests` {
    @Suite struct `Preload Test` {
        @Test func `Preload attribute should be preload`() {
            #expect(WHATWG.HTML.Preload.Attribute.attribute == "preload")
        }

        @Test func `Preload convenience properties`() {
            #expect(WHATWG.HTML.Preload.Attribute.none.rawValue == "none")
            #expect(WHATWG.HTML.Preload.Attribute.metadata.rawValue == "metadata")
            #expect(WHATWG.HTML.Preload.Attribute.auto.rawValue == "auto")
        }
    }
}
