import Testing
import WHATWG_HTML

@Suite struct `DisablePictureInPicture Test` {
    @Test func `DisablePictureInPicture attribute should be disablepictureinpicture`() {
        #expect(
            WHATWG.HTML.DisablePictureInPicture.Attribute.attribute == "disablepictureinpicture"
        )
    }
}
