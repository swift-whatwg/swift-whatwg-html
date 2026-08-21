import Testing
import WHATWG_HTML

@Suite struct `Download Test` {
    @Test func `Download attribute should be download`() {
        #expect(WHATWG.HTML.Download.Attribute.attribute == "download")
    }

    @Test func `Download boolean literal support`() {
        let downloadTrue: WHATWG.HTML.Download.Attribute = true
        let downloadFalse: WHATWG.HTML.Download.Attribute = false
        #expect(downloadTrue.shouldInclude == true)
        #expect(downloadFalse.shouldInclude == false)
    }

    @Test func `Download string literal support`() {
        let download: WHATWG.HTML.Download.Attribute = "document.pdf"
        #expect(download.description == "document.pdf")
        #expect(download.shouldInclude == true)
    }

    @Test func `Download with filename`() {
        let download = WHATWG.HTML.Download.Attribute("report.pdf")
        #expect(download.description == "report.pdf")
        #expect(download.shouldInclude == true)
    }

    @Test func `Download boolean form`() {
        let downloadTrue = WHATWG.HTML.Download.Attribute(true)
        let downloadFalse = WHATWG.HTML.Download.Attribute(false)
        #expect(downloadTrue.shouldInclude == true)
        #expect(downloadFalse.shouldInclude == false)
        #expect(downloadTrue.description.isEmpty)
        #expect(downloadFalse.description.isEmpty)
    }
}
