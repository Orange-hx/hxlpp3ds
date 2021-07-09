package hxlpp3ds;

@:native("Mic")
extern class Mic {
    public function new();
    @:luaDotMethod public static function start(seconds: Int, samplerate: Int): Void;
    @:luaDotMethod public static function stop(): Dynamic;
    @:luaDotMethod public static function isRecording(): Bool;
    @:luaDotMethod public static function pause(): Void;
    @:luaDotMethod public static function resume(): Void;
}
