package hxlpp3ds;

@:native("JPGV")
extern class JPGV {
    public function new();
    @:luaDotMethod public static function load(filename: String): Dynamic;
    @:luaDotMethod public static function start(jpgv: Dynamic, loop: Int): Void;
    @:luaDotMethod public static function draw(x: Int, y: Int, jpgv: Dynamic, screen: Int, ?use3D: Bool): Void;
    @:luaDotMethod public static function drawFast(jpgv: Dynamic, screen: Int, ?use3D: Bool): Void;
    @:luaDotMethod public static function unload(jpgv: Dynamic): Void;
    @:luaDotMethod public static function getFPS(jpgv: Dynamic): UInt;
    @:luaDotMethod public static function getFrame(jpgv: Dynamic): UInt;
    @:luaDotMethod public static function showFrame(x: Int, y: Int, jpgv: Dynamic, frame_number: Int, screen: Int, ?eye: Int): Void;
    @:luaDotMethod public static function getSrate(jpgv: Dynamic): UInt;
    @:luaDotMethod public static function getSize(jpgv: Dynamic): UInt;
    @:luaDotMethod public static function isPlaying(jpgv: Dynamic): Bool;
    @:luaDotMethod public static function stop(jpgv: Dynamic): Void;
    @:luaDotMethod public static function pause(jpgv: Dynamic): Void;
    @:luaDotMethod public static function resume(jpgv: Dynamic): Void;
}
