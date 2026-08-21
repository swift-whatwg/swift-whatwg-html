import Testing
import WHATWG_HTML

@Suite struct `AcceptCharset Test` {
    @Test func `AcceptCharset attribute should be accept-charset`() {
        #expect(WHATWG.HTML.AcceptCharset.Attribute.attribute == "accept-charset")
    }

    @Test func `AcceptCharset convenience properties`() {
        #expect(WHATWG.HTML.AcceptCharset.Attribute.utf8.rawValue == "UTF-8")
        #expect(WHATWG.HTML.AcceptCharset.Attribute.latin1.rawValue == "ISO-8859-1")
        #expect(WHATWG.HTML.AcceptCharset.Attribute.ascii.rawValue == "US-ASCII")
        #expect(WHATWG.HTML.AcceptCharset.Attribute.windows1252.rawValue == "windows-1252")
        #expect(WHATWG.HTML.AcceptCharset.Attribute.utf8AndLatin1.rawValue == "UTF-8,ISO-8859-1")
    }
}
