import EmailAddress_Standard
import RFC_3986
import Testing
import WHATWG_HTML

enum `Href Tests` {}

extension `Href Tests` {
    @Suite struct `Href Test` {
        @Test func `Href attribute should be href`() {
            #expect(WHATWG.HTML.Href.Attribute.attribute == "href")
        }

        @Test func `Href convenience methods`() throws {
            #expect(WHATWG.HTML.Href.Attribute.tel("123-456-7890").rawValue == "tel:123-456-7890")
            #expect(
                WHATWG.HTML.Href.Attribute.mailto(try EmailAddress("test@example.com")).rawValue
                    == "mailto:test@example.com"
            )
            #expect(WHATWG.HTML.Href.Attribute.sms("123-456-7890").rawValue == "sms:123-456-7890")
            #expect(WHATWG.HTML.Href.Attribute.file(try RFC_3986.URI.Path("/path/to/file")).rawValue == "file:///path/to/file")
            #expect(WHATWG.HTML.Href.Attribute.fragment("section1").rawValue == "#section1")
            #expect(
                WHATWG.HTML.Href.Attribute.whatsapp("123456789").rawValue == "https://wa.me/123456789"
            )
            #expect(
                WHATWG.HTML.Href.Attribute.facetime("user@example.com").rawValue
                    == "facetime:user@example.com"
            )
            #expect(
                WHATWG.HTML.Href.Attribute.facetimeVideo("123-456-7890").rawValue
                    == "facetime-video:123-456-7890"
            )
        }

    }
}
