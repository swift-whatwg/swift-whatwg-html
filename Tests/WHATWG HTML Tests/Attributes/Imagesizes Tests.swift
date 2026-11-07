import Testing
import WHATWG_HTML

enum `Imagesizes Tests` {}

extension `Imagesizes Tests` {
    @Suite struct `ImageSizes Test` {
        @Test func `ImageSizes attribute should be imagesizes`() {
            #expect(WHATWG.HTML.ImageSizes.Attribute.attribute == "imagesizes")
        }
    }
}
