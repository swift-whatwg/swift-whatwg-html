//
//  WHATWG_HTML.Space.swift
//  swift-whatwg-html
//
//  HTML coordinate space marker for typed geometry operations.
//

/// HTML coordinate space marker.
///
/// HTML uses a coordinate system where:
/// - Origin (0,0) is at the top-left corner
/// - X-axis increases to the right
/// - Y-axis increases downward
/// - Dimensions are typically in CSS pixels (integers)
///
/// This space marker enables typed geometry operations that distinguish
/// between different coordinate systems.
public import Geometry_Primitives

public typealias GeometryTypeAlias = Geometry

extension WHATWG_HTML {
    /// HTML coordinate space marker.
    public enum Space {}

    public typealias Geometry<Scalar> = GeometryTypeAlias<Scalar, WHATWG_HTML.Space>
}

extension WHATWG_HTML {
    /// Width in HTML space (CSS pixels).
    public typealias Width<Scalar> = WHATWG_HTML.Geometry<Scalar>.Width

    /// Height in HTML space (CSS pixels).
    public typealias Height<Scalar> = WHATWG_HTML.Geometry<Scalar>.Height

    /// A 2D point in HTML coordinate space.
    public typealias Point = WHATWG_HTML.Geometry<Int>.Point<2>

    /// A rectangle in HTML coordinate space.
    public typealias Rectangle<Scalar> = WHATWG_HTML.Geometry<Scalar>.Rectangle
}
