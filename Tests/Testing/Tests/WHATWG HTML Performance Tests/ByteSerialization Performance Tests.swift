import Testing

@testable import WHATWG_HTML_GlobalAttributes

extension `Performance Tests` {

    @Suite(.serialized) struct `Byte Serialization` {

        @Test(.timed(threshold: .milliseconds(1)))
        func `Autofocus RFC pattern`() {
            let attr = WHATWG.HTML.Autofocus.Attribute(value: true)
            let _ = [UInt8](attr)
        }

        @Test(.timed(threshold: .milliseconds(1)))
        func `Autofocus UTF-8 direct`() {
            let _ = Array(WHATWG.HTML.Autofocus.Attribute.attribute.utf8)
        }

        @Test(.timed(threshold: .milliseconds(1)))
        func `Id ASCII RFC pattern`() {
            let attr = WHATWG.HTML.Id.Attribute(value: "main-content")
            let _ = [UInt8].init(attr)
        }

        @Test(.timed(threshold: .milliseconds(1)))
        func `Id ASCII String interpolation`() {
            let attr = WHATWG.HTML.Id.Attribute(value: "main-content")
            let str = "id=\"\(attr.rawValue)\""
            let _ = Array(str.utf8)
        }

        @Test(.timed(threshold: .milliseconds(1)))
        func `Id UTF-8 RFC pattern`() {
            let attr = WHATWG.HTML.Id.Attribute(value: "日本語-コンテンツ")
            let _ = [UInt8](attr)
        }

        @Test(.timed(threshold: .milliseconds(1)))
        func `Id UTF-8 String interpolation`() {
            let attr = WHATWG.HTML.Id.Attribute(value: "日本語-コンテンツ")
            let str = "id=\"\(attr.rawValue)\""
            let _ = Array(str.utf8)
        }

        @Test(.timed(threshold: .milliseconds(5)))
        func `Batch RFC 100 attributes`() {
            let attributes = (0..<100).map { WHATWG.HTML.Id.Attribute(value: "element-\($0)") }

            var total: [UInt8] = []
            total.reserveCapacity(2000)
            for attr in attributes {
                total.append(contentsOf: [UInt8](attr))
                total.append(UInt8.ascii.space)
            }
            let _ = total
        }

        @Test(.timed(threshold: .milliseconds(5)))
        func `Batch String 100 attributes`() {
            let attributes = (0..<100).map { WHATWG.HTML.Id.Attribute(value: "element-\($0)") }

            var str = ""
            str.reserveCapacity(2000)
            for attr in attributes { str += "id=\"\(attr.rawValue)\" " }
            let _ = Array(str.utf8)
        }

        @Test(.timed(threshold: .milliseconds(1)))
        func `Direct bytes only`() {
            let attr = WHATWG.HTML.Id.Attribute(value: "test")
            let _ = [UInt8](attr)
        }

        @Test(.timed(threshold: .milliseconds(1)))
        func `Bytes via String composition`() {
            let attr = WHATWG.HTML.Id.Attribute(value: "test")
            let _ = String(attr)
        }

        @Test(.timed(threshold: .milliseconds(1)))
        func `HTML generation RFC 10 attributes`() {
            let ids = (0..<5).map { WHATWG.HTML.Id.Attribute(value: "element-\($0)") }
            let autofocus = (0..<5).map { WHATWG.HTML.Autofocus.Attribute(value: $0 % 2 == 0) }

            var html: [UInt8] = []
            html.reserveCapacity(500)

            for id in ids {
                html.append(contentsOf: [UInt8](id))
                html.append(UInt8.ascii.space)
            }

            for focus in autofocus {
                html.append(contentsOf: [UInt8](focus))
                html.append(UInt8.ascii.space)
            }

            let _ = String(decoding: html, as: UTF8.self)
        }

        @Test(.timed(threshold: .milliseconds(1)))
        func `HTML generation String 10 attributes`() {
            let ids = (0..<5).map { WHATWG.HTML.Id.Attribute(value: "element-\($0)") }
            let autofocus = (0..<5).map { WHATWG.HTML.Autofocus.Attribute(value: $0 % 2 == 0) }

            var html = ""
            html.reserveCapacity(500)

            for id in ids { html += "id=\"\(id.rawValue)\" " }

            for focus in autofocus { if focus.rawValue { html += "autofocus " } }

            let _ = html
        }
    }
}
