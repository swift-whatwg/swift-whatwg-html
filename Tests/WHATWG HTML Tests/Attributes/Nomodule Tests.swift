import Testing
import WHATWG_HTML

enum `Nomodule Tests` {}

extension `Nomodule Tests` {
    @Suite struct `Nomodule Test` {
        @Test func `Nomodule attribute should be nomodule`() {
            #expect(WHATWG.HTML.Nomodule.Attribute.attribute == "nomodule")
        }
    }
}
