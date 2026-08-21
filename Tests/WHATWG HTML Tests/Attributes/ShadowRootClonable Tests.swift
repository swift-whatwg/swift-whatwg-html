import Testing
import WHATWG_HTML

@Suite struct `ShadowRootClonable Test` {
    @Test func `ShadowRootClonable attribute should be shadowrootclonable`() {
        #expect(WHATWG.HTML.ShadowRootClonable.Attribute.attribute == "shadowrootclonable")
    }
}
