package hxlpp3ds;

@:native("Keyboard")
extern class Keyboard {
    public function new();
    @:luaDotMethod public static function show(): Void;
    @:luaDotMethod public static function hide(): Void;
    @:luaDotMethod public static function getState(): UInt;
    @:luaDotMethod public static function clear(): Void;
}
