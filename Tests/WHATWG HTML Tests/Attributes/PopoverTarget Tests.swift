import Testing
import WHATWG_HTML

@Suite struct `PopoverTarget Test` {
    @Test func `PopoverTarget attribute should be popovertarget`() {
        #expect(WHATWG.HTML.PopoverTarget.Attribute.attribute == "popovertarget")
    }
}
