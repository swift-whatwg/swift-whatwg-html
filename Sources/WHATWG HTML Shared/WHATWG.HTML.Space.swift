//
//  WHATWG.HTML.Space.swift
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

extension WHATWG.HTML {
    /// HTML coordinate space marker.
    public enum Space {}

    public typealias Geometry<Scalar> = GeometryTypeAlias<Scalar, WHATWG.HTML.Space>
}

extension WHATWG.HTML {
    /// A 2D point in HTML coordinate space.
    public typealias Point = WHATWG.HTML.Geometry<Int>.Point<2>

    /// A rectangle in HTML coordinate space.
    public typealias Rectangle<Scalar> = WHATWG.HTML.Geometry<Scalar>.Rectangle
}
