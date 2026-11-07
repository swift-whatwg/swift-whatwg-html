import Testing
import WHATWG_HTML

enum `Kind Tests` {}

extension `Kind Tests` {
    @Suite struct `Kind Test` {
        @Test func `Kind attribute should be kind`() {
            #expect(WHATWG.HTML.Kind.Attribute.attribute == "kind")
        }

        @Test func `Kind convenience properties`() {
            #expect(WHATWG.HTML.Kind.Attribute.subtitles.rawValue == "subtitles")
            #expect(WHATWG.HTML.Kind.Attribute.captions.rawValue == "captions")
            #expect(WHATWG.HTML.Kind.Attribute.chapters.rawValue == "chapters")
            #expect(WHATWG.HTML.Kind.Attribute.metadata.rawValue == "metadata")
        }
    }
}
