//
//  File.swift
//  swift-whatwg-html
//
//  Created by Coen ten Thije Boonkkamp on 05/12/2025.
//

extension WHATWG_HTML.Element.Content {
    /// The broad categories used to group HTML elements with similar characteristics.
    ///
    /// Each element in HTML falls into zero or more categories. These categories
    /// are used to define content models and allowed contexts for elements.
    ///
    /// ## Category Relationships
    /// - Sectioning, heading, phrasing, embedded, and interactive content are all types of flow content.
    /// - Metadata is sometimes flow content.
    /// - Metadata and interactive content are sometimes phrasing content.
    /// - Embedded content is also a type of phrasing content, and sometimes interactive content.
    ///
    /// ## Specification
    /// [WHATWG HTML Living Standard - Kinds of Content](https://html.spec.whatwg.org/multipage/dom.html#kinds-of-content)
    public enum Category: String, Sendable, Hashable, Codable, CaseIterable {
        /// Content that sets up the presentation or behavior of the rest of the content,
        /// or that sets up the relationship of the document with other documents,
        /// or that conveys other "out of band" information.
        ///
        /// Elements: base, link, meta, noscript, script, style, template, title
        case metadata

        /// Most elements used in the body of documents and applications.
        /// This is the broadest content category.
        ///
        /// Includes: a, abbr, address, article, aside, audio, b, bdi, bdo, blockquote,
        /// br, button, canvas, cite, code, data, datalist, del, details, dfn, dialog,
        /// div, dl, em, embed, fieldset, figure, footer, form, h1-h6, header, hgroup,
        /// hr, i, iframe, img, input, ins, kbd, label, main, map, mark, menu, meter,
        /// nav, noscript, object, ol, output, p, picture, pre, progress, q, ruby, s,
        /// samp, script, search, section, select, slot, small, span, strong, sub, sup,
        /// table, template, textarea, time, u, ul, var, video, wbr, autonomous custom
        /// elements, text
        ///
        /// Conditional: area (if descendant of map), link (if allowed in body),
        /// main (if hierarchically correct), meta (if itemprop present),
        /// MathML math, SVG svg
        case flow

        /// Content that defines the scope of header and footer elements.
        ///
        /// Elements: article, aside, nav, section
        case sectioning

        /// Content that defines the heading of a section.
        ///
        /// Elements: h1, h2, h3, h4, h5, h6
        /// Conditional: hgroup (if it has a descendant h1-h6 element)
        case heading

        /// The text of the document, as well as elements that mark up that text
        /// at the intra-paragraph level. Runs of phrasing content form paragraphs.
        ///
        /// Most elements categorized as phrasing content can only contain elements
        /// that are themselves categorized as phrasing content, not any flow content.
        case phrasing

        /// Content that imports another resource into the document, or content
        /// from another vocabulary that is inserted into the document.
        ///
        /// Elements: audio, canvas, embed, iframe, img, object, picture, video,
        /// MathML math, SVG svg
        ///
        /// Some embedded content elements can have fallback content: content that
        /// is to be used when the external resource cannot be used.
        case embedded

        /// Content that is specifically intended for user interaction.
        ///
        /// Unconditional: button, details, embed, iframe, label, select, textarea
        /// Conditional: a (if href present), audio (if controls present),
        /// img (if usemap present), input (if not hidden), video (if controls present)
        case interactive

        /// Content that makes an element non-empty by providing descendant non-empty text,
        /// or something users can hear, view, or otherwise interact with.
        ///
        /// This is used as a general guideline for elements whose content model
        /// allows any flow content or phrasing content.
        case palpable

        /// Elements that do not represent anything themselves but are used to
        /// support scripts or provide functionality for the user.
        ///
        /// Elements: script, template
        case `script-supporting`

        /// Elements which are allowed as descendants of select elements.
        ///
        /// Elements: option, optgroup, hr, script-supporting elements, noscript, div
        case `select element inner content`

        /// Elements which are allowed as descendants of optgroup elements.
        ///
        /// Elements: option, script-supporting elements, noscript, div
        case `optgroup element inner content`

        /// Elements which are allowed as descendants of option elements.
        ///
        /// Elements: div, phrasing content (excluding datalist, object, interactive content,
        /// and elements with tabindex attribute)
        case `option element inner content`
    }
}
