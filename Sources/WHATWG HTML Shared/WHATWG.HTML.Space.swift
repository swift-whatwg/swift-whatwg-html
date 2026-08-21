public import Geometry_Primitives

public typealias GeometryTypeAlias = Geometry

extension WHATWG.HTML {

    public enum Space {}

    public typealias Geometry<Scalar> = GeometryTypeAlias<Scalar, WHATWG.HTML.Space>
}

extension WHATWG.HTML {

    public typealias Point = WHATWG.HTML.Geometry<Int>.Point<2>

    public typealias Rectangle<Scalar> = WHATWG.HTML.Geometry<Scalar>.Rectangle
}
