import Testing
import WHATWG_HTML

@Suite struct `As Test` {
    @Test func `As attribute should be as`() { #expect(WHATWG.HTML.As.Attribute.attribute == "as") }

    @Test func `As convenience properties`() {
        #expect(WHATWG.HTML.As.Attribute.audio.rawValue == "audio")
        #expect(WHATWG.HTML.As.Attribute.document.rawValue == "document")
        #expect(WHATWG.HTML.As.Attribute.embed.rawValue == "embed")
        #expect(WHATWG.HTML.As.Attribute.fetch.rawValue == "fetch")
        #expect(WHATWG.HTML.As.Attribute.font.rawValue == "font")
        #expect(WHATWG.HTML.As.Attribute.image.rawValue == "image")
        #expect(WHATWG.HTML.As.Attribute.object.rawValue == "object")
        #expect(WHATWG.HTML.As.Attribute.script.rawValue == "script")
        #expect(WHATWG.HTML.As.Attribute.style.rawValue == "style")
        #expect(WHATWG.HTML.As.Attribute.track.rawValue == "track")
        #expect(WHATWG.HTML.As.Attribute.worker.rawValue == "worker")
    }
}
