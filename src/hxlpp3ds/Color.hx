package hxlpp3ds;

@:native("Color")
extern class Color {
    public function new(r: Int, g: Int, b: Int, ?a: Int) {
        return untyped __lua__("Color.new(" + r + "," + g + "," + b + ((a != null) ? ("," + a + ")") : ")"));
    }
    
    @:luaDotMethod public static function getR(color: UInt): Int;
    @:luaDotMethod public static function getG(color: UInt): Int;
    @:luaDotMethod public static function getB(color: UInt): Int;
    @:luaDotMethod public static function getA(color: UInt): Int;
    @:luaDotMethod public static function convertFrom(color: Dynamic): Int;
}
