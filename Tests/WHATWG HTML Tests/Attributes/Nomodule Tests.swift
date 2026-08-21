import Testing
import WHATWG_HTML

@Suite struct `Nomodule Test` {
    @Test func `Nomodule attribute should be nomodule`() {
        #expect(WHATWG.HTML.Nomodule.Attribute.attribute == "nomodule")
    }
}
