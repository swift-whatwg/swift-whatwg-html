import ASCII_Primitives

extension WHATWG.HTML.Content {

    public enum Text: Sendable, Hashable {

        case empty

        case `inter-element whitespace`

        case content(String)
    }

    public static let whitespaces: Set<UInt8> = [
        UInt8.ascii.htab, UInt8.ascii.lf, UInt8.ascii.ff, UInt8.ascii.cr, UInt8.ascii.sp,
    ]
}
