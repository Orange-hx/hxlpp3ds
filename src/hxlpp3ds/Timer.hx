package hxlpp3ds;

@:native("Timer")
extern class Timer {
    public function new() {
        return untyped __lua__("Timer.new()");
    }
    @:luaDotMethod public static function getTime(timer: Timer): UInt;
    @:luaDotMethod public static function destroy(timer: Timer): Void;
    @:luaDotMethod public static function reset(timer: Timer): Void;
    @:luaDotMethod public static function pause(timer: Timer): Void;
    @:luaDotMethod public static function isPlaying(timer: Timer): Bool;
}
