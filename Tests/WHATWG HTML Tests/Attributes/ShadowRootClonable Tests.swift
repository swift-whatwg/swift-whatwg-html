import Testing
import WHATWG_HTML

enum `ShadowRootClonable Tests` {}

extension `ShadowRootClonable Tests` {
    @Suite struct `ShadowRootClonable Test` {
        @Test func `ShadowRootClonable attribute should be shadowrootclonable`() {
            #expect(WHATWG.HTML.ShadowRootClonable.Attribute.attribute == "shadowrootclonable")
        }
    }
}
