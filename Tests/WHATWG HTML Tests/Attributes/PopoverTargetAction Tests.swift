import Testing
import WHATWG_HTML

@Suite struct `PopoverTargetAction Test` {
    @Test func `PopoverTargetAction attribute should be popovertargetaction`() {
        #expect(WHATWG.HTML.PopoverTargetAction.Attribute.attribute == "popovertargetaction")
    }

    @Test func `PopoverTargetAction should have predefined values`() {
        #expect(WHATWG.HTML.PopoverTargetAction.Attribute.show.rawValue == "show")
        #expect(WHATWG.HTML.PopoverTargetAction.Attribute.hide.rawValue == "hide")
        #expect(WHATWG.HTML.PopoverTargetAction.Attribute.toggle.rawValue == "toggle")
    }
}
