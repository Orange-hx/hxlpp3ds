package hxlpp3ds;

@:native("Console")
extern class Console {
    public function new(screen: Int) {
        return cast(untyped __lua__("Console.new(" + screen + ")"), UInt);
    }

    @:luaDotMethod public static function clear(console: UInt): Void;
    @:luaDotMethod public static function show(console: UInt): Int;
    @:luaDotMethod public static function append(console: UInt, text: String): Void;
    @:luaDotMethod public static function destroy(console: UInt): Void;
}