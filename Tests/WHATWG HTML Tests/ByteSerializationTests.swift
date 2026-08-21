import Testing

@testable import WHATWG_HTML_GlobalAttributes

@Suite("Byte Serialization Tests") struct ByteSerializationTests {

    @Test func `Autofocus byte serialization - true`() {
        let attr: WHATWG.HTML.Autofocus.Attribute = true
        let bytes = [UInt8](attr)

        #expect(bytes == Array("autofocus".utf8))
        #expect(String(attr) == "autofocus")
    }

    @Test func `Autofocus byte serialization - false`() {
        let attr: WHATWG.HTML.Autofocus.Attribute = false
        let bytes = [UInt8](attr)

        #expect(bytes.isEmpty)
        #expect(String(attr).isEmpty)
    }

    @Test func `Id byte serialization - ASCII`() {
        let attr = WHATWG.HTML.Id.Attribute(value: "main")
        let bytes = [UInt8](attr)
        let expected = Array("id=\"main\"".utf8)

        #expect(bytes == expected)
        #expect(String(attr) == "id=\"main\"")
    }

    @Test func `Id byte serialization - UTF-8`() {
        let attr = WHATWG.HTML.Id.Attribute(value: "日本")
        let bytes = [UInt8](attr)

        let string = String(attr)
        #expect(string == "id=\"日本\"")

        let decoded = String(decoding: bytes, as: UTF8.self)
        #expect(decoded == "id=\"日本\"")
    }

    @Test func `Id byte serialization - complex value`() {
        let attr = WHATWG.HTML.Id.Attribute(value: "my-complex-id_123")
        let bytes = [UInt8](attr)
        let expected = Array("id=\"my-complex-id_123\"".utf8)

        #expect(bytes == expected)
        #expect(String(attr) == "id=\"my-complex-id_123\"")
    }

    @Test func `String initializer composes through bytes`() {
        let attr: WHATWG.HTML.Autofocus.Attribute = true

        let bytes = [UInt8](attr)
        let stringFromBytes = String(decoding: bytes, as: UTF8.self)
        let stringDirect = String(attr)

        #expect(stringFromBytes == stringDirect)
    }

    @Test func `Byte serialization is authoritative`() {
        let id = WHATWG.HTML.Id.Attribute(value: "test")

        let bytes = [UInt8](id)

        let stringFromInit = String(id)
        let stringFromBytes = String(decoding: bytes, as: UTF8.self)

        #expect(stringFromInit == stringFromBytes)
    }
}
