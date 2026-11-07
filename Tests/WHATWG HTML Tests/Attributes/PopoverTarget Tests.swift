import Testing
import WHATWG_HTML

enum `PopoverTarget Tests` {}

extension `PopoverTarget Tests` {
    @Suite struct `PopoverTarget Test` {
        @Test func `PopoverTarget attribute should be popovertarget`() {
            #expect(WHATWG.HTML.PopoverTarget.Attribute.attribute == "popovertarget")
        }
    }
}
