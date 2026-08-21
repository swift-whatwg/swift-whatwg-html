import Testing
import WHATWG_HTML

@Suite struct `Pattern Test` {
    @Test func `Pattern attribute should be pattern`() {
        #expect(WHATWG.HTML.Pattern.Attribute.attribute == "pattern")
    }

    @Test func `Pattern convenience properties`() {
        #expect(WHATWG.HTML.Pattern.Attribute.username.rawValue == "[a-zA-Z0-9]{3,16}")
        #expect(WHATWG.HTML.Pattern.Attribute.usPhone.rawValue == "[0-9]{3}-[0-9]{3}-[0-9]{4}")
        #expect(WHATWG.HTML.Pattern.Attribute.usZipCode.rawValue == "[0-9]{5}(-[0-9]{4})?")
        #expect(WHATWG.HTML.Pattern.Attribute.integer.rawValue == "[0-9]+")
        #expect(WHATWG.HTML.Pattern.Attribute.alphanumeric.rawValue == "[a-zA-Z0-9]+")
    }
}
