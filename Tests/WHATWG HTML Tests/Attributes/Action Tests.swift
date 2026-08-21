import Testing
import WHATWG_HTML

@Suite struct `Action Test` {
    @Test func `Action attribute should be action`() {
        #expect(WHATWG.HTML.Action.Attribute.attribute == "action")
    }

    @Test func `Action relative path factory`() {
        #expect(WHATWG.HTML.Action.Attribute.relative("submit").rawValue == "/submit")
        #expect(WHATWG.HTML.Action.Attribute.relative("/submit").rawValue == "/submit")
    }

    @Test func `Action absolute URL factory`() {
        #expect(
            WHATWG.HTML.Action.Attribute.absolute("https://example.com/submit").rawValue
                == "https://example.com/submit"
        )
    }

    @Test func `Action convenience properties`() {
        #expect(WHATWG.HTML.Action.Attribute.current.rawValue == ".")
        #expect(WHATWG.HTML.Action.Attribute.clientSide.rawValue == "#")
    }
}
