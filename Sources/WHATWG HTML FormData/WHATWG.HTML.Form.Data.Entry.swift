public import WHATWG_HTML_Shared

extension WHATWG.HTML.Form.Data {

    public struct Entry: Sendable, Hashable {

        public let name: String

        public let value: Value

        @inlinable public init(name: String, value: Value) {
            self.name = name
            self.value = value
        }

        @inlinable public init(name: String, stringValue: String) {
            self.name = name
            self.value = .string(stringValue)
        }

        @inlinable public init(name: String, file: File) {
            self.name = name
            self.value = .file(file)
        }
    }
}
