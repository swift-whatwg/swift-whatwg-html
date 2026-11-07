import Testing
import WHATWG_HTML

enum `ImageSrcSet Tests` {}

extension `ImageSrcSet Tests` {
    @Suite struct `ImageSrcSet Test` {
        @Test func `ImageSrcSet attribute should be imagesrcset`() {
            #expect(WHATWG.HTML.ImageSrcSet.Attribute.attribute == "imagesrcset")
        }
    }
}
