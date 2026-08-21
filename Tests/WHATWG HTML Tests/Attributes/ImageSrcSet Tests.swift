import Testing
import WHATWG_HTML

@Suite struct `ImageSrcSet Test` {
    @Test func `ImageSrcSet attribute should be imagesrcset`() {
        #expect(WHATWG.HTML.ImageSrcSet.Attribute.attribute == "imagesrcset")
    }
}
