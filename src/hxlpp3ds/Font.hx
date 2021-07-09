package hxlpp3ds;

@:native("Font")
extern class Font {
    public function new();
    @:luaDotMethod public static function load(filename: String): UInt;
    @:luaDotMethod public static function setPixelSizes(font: UInt, size: UInt): Void;
    @:luaDotMethod public static function print(font: UInt, x: Int, y: Int, text: String, color: UInt, screen: UInt, ?side: UInt): Void;
    @:luaDotMethod public static function unload(font: UInt): Void;
}
