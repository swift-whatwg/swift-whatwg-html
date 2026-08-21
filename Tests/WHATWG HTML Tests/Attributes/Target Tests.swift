import Testing
import WHATWG_HTML

@Suite struct `Target Test` {
    @Test func `Target attribute should be target`() {
        #expect(WHATWG.HTML.Target.Attribute.attribute == "target")
    }

    @Test func `Target convenience properties`() {
        #expect(WHATWG.HTML.Target.Attribute.`self`.rawValue == "_self")
        #expect(WHATWG.HTML.Target.Attribute.blank.rawValue == "_blank")
        #expect(WHATWG.HTML.Target.Attribute.parent.rawValue == "_parent")
        #expect(WHATWG.HTML.Target.Attribute.top.rawValue == "_top")
        #expect(WHATWG.HTML.Target.Attribute.unfencedTop.rawValue == "_unfencedTop")
    }
}
