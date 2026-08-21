extension String {

    public init<T: WHATWG.HTML.BooleanAttribute, Encoding>(
        _ attribute: T,
        as encoding: Encoding.Type = UTF8.self
    ) where Encoding: _UnicodeEncoding, Encoding.CodeUnit == UInt8 {
        self = String(decoding: [UInt8](attribute), as: encoding)
    }
}

extension String {

    public init<T: WHATWG.HTML.StringAttribute, Encoding>(
        _ attribute: T,
        as encoding: Encoding.Type = UTF8.self
    ) where Encoding: _UnicodeEncoding, Encoding.CodeUnit == UInt8 {
        self = String(decoding: [UInt8](attribute), as: encoding)
    }
}
