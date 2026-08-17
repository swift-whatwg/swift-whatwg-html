// frame Frame.swift
// WHATWG HTML Obsolete
//
// Defines the frame element (<frame>)

public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG_HTML.Element {
    /// Represents an HTML frame element (`<frame>`), which defines a particular area in which another HTML document can be displayed.
    ///
    /// The `Frame` struct provides a type-safe way to create HTML frame elements with various attributes.
    /// A frame should be used within a `<frameset>` element.
    ///
    /// > Note: The `<frame>` element is deprecated in HTML5. Consider using `<iframe>` instead
    /// > for better performance and accessibility.
    ///
    /// ## Example
    ///
    /// ```swift
    /// frameset {
    ///     frame(src: "https://example.com/page1.html")
    ///     frame(src: "https://example.com/page2.html", name: "content")
    /// }
    /// ```
    ///
    /// ## Best Practices
    ///
    /// - Avoid using frames when possible due to accessibility issues
    /// - Use `<iframe>` instead for embedding content within a document
    /// - Always provide descriptive names for frames to improve navigation
    ///
    public struct Frame: WHATWG_HTML.Element.`Protocol` {

        /// The URL of the document to be displayed in the frame
        public var src: WHATWG_HTML.Attribute.Src?

        /// A name for the frame, used for targeting links
        public var name: WHATWG_HTML.Attribute.Name?

        /// Prevents user from resizing the frame
        public var noresize: WHATWG_HTML.Attribute.NoResize?

        /// Controls scrollbar appearance
        public var scrolling: WHATWG_HTML.Attribute.Scrolling?

        /// Margins between frames (height)
        public var marginheight: WHATWG_HTML.Attribute.MarginHeight?

        /// Margins between frames (width)
        public var marginwidth: WHATWG_HTML.Attribute.MarginWidth?

        /// Controls frame border appearance
        public var frameborder: WHATWG_HTML.Attribute.FrameBorder?

        /// Creates a new Frame element with the specified attributes.
        ///
        /// - Parameters:
        ///   - src: URL of the document to display in the frame
        ///   - name: Name for the frame (for targeting links)
        ///   - noresize: Whether to prevent user resizing
        ///   - scrolling: Scrollbar appearance control
        ///   - marginheight: Height of margins between frames
        ///   - marginwidth: Width of margins between frames
        ///   - frameborder: Frame border appearance
        public init(
            src: WHATWG_HTML.Attribute.Src? = nil,
            name: WHATWG_HTML.Attribute.Name? = nil,
            noresize: WHATWG_HTML.Attribute.NoResize? = nil,
            scrolling: WHATWG_HTML.Attribute.Scrolling? = nil,
            marginheight: WHATWG_HTML.Attribute.MarginHeight? = nil,
            marginwidth: WHATWG_HTML.Attribute.MarginWidth? = nil,
            frameborder: WHATWG_HTML.Attribute.FrameBorder? = nil
        ) {
            self.src = src
            self.name = name
            self.noresize = noresize
            self.scrolling = scrolling
            self.marginheight = marginheight
            self.marginwidth = marginwidth
            self.frameborder = frameborder
        }
    }
}

extension WHATWG_HTML.Element.Frame {
    /// The HTML tag name
    @inlinable public static var tag: String { "frame" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = []
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.flow]))
}
