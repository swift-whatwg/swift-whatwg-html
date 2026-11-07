import Testing
import WHATWG_HTML

enum `Crossorigin Tests` {}

extension `Crossorigin Tests` {
    @Suite struct `Crossorigin Test` {
        @Test func `Crossorigin attribute should be crossorigin`() {
            #expect(WHATWG.HTML.Crossorigin.Attribute.attribute == "crossorigin")
        }

        @Test func `Crossorigin convenience properties`() {
            #expect(WHATWG.HTML.Crossorigin.Attribute.anonymous.rawValue == "anonymous")
            #expect(WHATWG.HTML.Crossorigin.Attribute.useCredentials.rawValue == "use-credentials")
        }
    }
}
