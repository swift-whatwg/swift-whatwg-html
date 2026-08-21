import ASCII_Primitives

extension [UInt8] {

    public init<T: WHATWG.HTML.BooleanAttribute>(_ attribute: T) {
        if attribute.rawValue {

            self = Array(T.attribute.utf8)
        } else {

            self = []
        }
    }
}

extension [UInt8] {

    public init<T: WHATWG.HTML.StringAttribute>(_ attribute: T) {
        self = []

        let attributeBytes = T.attribute.utf8.count
        let valueBytes = attribute.rawValue.utf8.count
        self.reserveCapacity(attributeBytes + 3 + valueBytes)

        self.append(contentsOf: T.attribute.utf8)
        self.append(UInt8.ascii.equalsSign)
        self.append(UInt8.ascii.dquote)
        self.append(contentsOf: attribute.rawValue.utf8)
        self.append(UInt8.ascii.dquote)
    }
}
