package hxlpp3ds;

@:native("Screen")
extern class Screen {
    public function new();
    @:luaDotMethod public static function waitVblankStart(): Void;
    @:luaDotMethod public static function flip(): Void;
    @:luaDotMethod public static function debugPrint(x: Int, y: Int, text: String, color: UInt, screen_id: Int, ?eye: Int): Void;
    @:luaDotMethod public static function refresh(): Void;
    @:luaDotMethod public static function clear(screen_id: Int): Void;
    @:luaDotMethod public static function fillRect(x1: Int, x2: Int, y1: Int, y2: Int, color: UInt, screen_id: Dynamic, ?eye: Dynamic): Void;
    @:luaDotMethod public static function fillEmptyRect(x1: Int, x2: Int, y1: Int, y2: Int, color: UInt, screen_id: Dynamic, ?eye: Dynamic): Void;
    @:luaDotMethod public static function drawLine(x1: Int, x2: Int, y1: Int, y2: Int, color: UInt, screen_id: Dynamic, ?eye: Dynamic): Void;
    @:luaDotMethod public static function drawPixel(x: Int, y: Int, color: UInt, screen_id: Dynamic, ?eye: Dynamic): Void;
    @:luaDotMethod public static function getPixel(x: Int, y: Int, screen_id: Dynamic, ?eye: Dynamic): UInt;
    @:luaDotMethod public static function loadImage(filename: String): Int;
    @:luaDotMethod public static function drawImage(x: Int, y: Int, image: Dynamic, screen_id: Dynamic, ?eye: Dynamic): Void;
    @:luaDotMethod public static function drawPartialImage(x: Int, y: Int, image_x: Int, image_y: Int, width: Int, height: Int, image: Dynamic, screen_id: Dynamic, ?eye: Dynamic): Void;
    @:luaDotMethod public static function getImageWidth(image: Dynamic): Int;
    @:luaDotMethod public static function getImageHeight(image: Dynamic): Int;
    @:luaDotMethod public static function flipImage(source: Dynamic, destination: Dynamic): Void;
    @:luaDotMethod public static function createImage(width: Int, height: Int, color: UInt): Dynamic;
    @:luaDotMethod public static function freeImage(image: Dynamic): Void;
    @:luaDotMethod public static function saveImage(image: Dynamic, file: String, jpg_compression: Bool): Void;
    @:luaDotMethod public static function enable3D(): Void;
    @:luaDotMethod public static function disable3D(): Void;
    @:luaDotMethod public static function get3DLevel(): Float;
}
