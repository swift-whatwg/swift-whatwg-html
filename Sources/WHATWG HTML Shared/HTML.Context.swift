////
////  HTML.Context.swift
////  swift-whatwg-html
////
////  Context wrappers that convert geometry types to HTML attribute strings.
////
//
// import Geometry_Primitives
//
//// MARK: - HTML Geometry Conversion
//
///// Provides conversion utilities for HTML geometry types.
// extension WHATWG_HTML.Geometry {
//    public enum Context {
//        /// Convert a width value to an HTML attribute string.
//        ///
//        /// - Parameter width: The width in HTML space.
//        /// - Returns: String representation for HTML attribute (e.g., "400").
//        public static func attribute(width: WHATWG_HTML.Width) -> String {
//            String(width.rawValue)
//        }
//
//        /// Convert a height value to an HTML attribute string.
//        ///
//        /// - Parameter height: The height in HTML space.
//        /// - Returns: String representation for HTML attribute (e.g., "300").
//        public static func attribute(height: WHATWG_HTML.Height) -> String {
//            String(height.rawValue)
//        }
//    }
// }
//
// extension WHATWG_HTML.Rectangle {
//    public struct Context {
//        let rectangle: WHATWG_HTML.Rectangle
//
//        /// Initialize with a rectangle value.
//        public init(_ rectangle: WHATWG_HTML.Rectangle) {
//            self.rectangle = rectangle
//        }
//
//        /// Width attribute value (rounded to integer).
//        public var width: String {
//            String(Int(rectangle.width.rawValue))
//        }
//
//        /// Height attribute value (rounded to integer).
//        public var height: String {
//            String(Int(rectangle.height.rawValue))
//        }
//    }
// }
// extension Geometry.Orthotope where N == 2, Space == WHATWG_HTML.Space, Scalar == Double {
//    /// Access HTML-specific functionality for this rectangle.
//    public var html: HTMLRectangleContext { HTMLRectangleContext(self) }
// }
