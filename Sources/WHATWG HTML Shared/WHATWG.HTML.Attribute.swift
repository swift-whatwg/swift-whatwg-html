extension WHATWG.HTML {

    public protocol Attribute: Sendable, Hashable {

        static var attribute: String { get }
    }
}
