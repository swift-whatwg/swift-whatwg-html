import Testing
import WHATWG_HTML

@Suite struct `FormTarget Test` {
    @Test func `FormTarget attribute should be formtarget`() {
        #expect(WHATWG.HTML.FormTarget.Attribute.attribute == "formtarget")
    }

    @Test func `FormTarget should have predefined values`() {
        #expect(WHATWG.HTML.FormTarget.Attribute.`self`.rawValue == "_self")
        #expect(WHATWG.HTML.FormTarget.Attribute.blank.rawValue == "_blank")
        #expect(WHATWG.HTML.FormTarget.Attribute.parent.rawValue == "_parent")
        #expect(WHATWG.HTML.FormTarget.Attribute.top.rawValue == "_top")
        #expect(WHATWG.HTML.FormTarget.Attribute.unfencedTop.rawValue == "_unfencedTop")
    }
}
