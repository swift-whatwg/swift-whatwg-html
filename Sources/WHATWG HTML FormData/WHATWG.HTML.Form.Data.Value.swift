public import WHATWG_HTML_Shared

extension WHATWG.HTML.Form.Data {

    public enum Value: Sendable, Hashable {

        case string(String)

        case file(File)
    }
}

extension WHATWG.HTML.Form.Data.Value {

    @inlinable public var stringValue: String? {
        guard case .string(let value) = self else { return nil }
        return value
    }

    @inlinable public var fileValue: WHATWG.HTML.Form.Data.File? {
        guard case .file(let file) = self else { return nil }
        return file
    }

    @inlinable public var isString: Bool {
        if case .string = self { return true }
        return false
    }

    @inlinable public var isFile: Bool {
        if case .file = self { return true }
        return false
    }
}

extension WHATWG.HTML.Form.Data.Value: ExpressibleByStringLiteral {
    @inlinable public init(stringLiteral value: String) { self = .string(value) }
}

extension WHATWG.HTML.Form.Data.Value: CustomStringConvertible {
    public var description: String {
        switch self {
        case .string(let value): return value

        case .file(let file):
            return "<File: \(file.name), type: \(file.type), size: \(file.body.count) bytes>"
        }
    }
}
