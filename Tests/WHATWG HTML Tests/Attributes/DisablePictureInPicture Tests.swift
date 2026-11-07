import Testing
import WHATWG_HTML

enum `DisablePictureInPicture Tests` {}

extension `DisablePictureInPicture Tests` {
    @Suite struct `DisablePictureInPicture Test` {
        @Test func `DisablePictureInPicture attribute should be disablepictureinpicture`() {
            #expect(
                WHATWG.HTML.DisablePictureInPicture.Attribute.attribute == "disablepictureinpicture"
            )
        }
    }
}
