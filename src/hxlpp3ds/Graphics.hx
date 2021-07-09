package hxlpp3ds;

@:native("Graphics")
extern class Graphics {
    public function new();
    @:luaDotMethod public static function init(): Void;
    @:luaDotMethod public static function term(): Void;
    @:luaDotMethod public static function initBlend(screen: Int, ?side: Int): Void;
    @:luaDotMethod public static function termBlend(): Void;
    @:luaDotMethod public static function loadImage(filename: String): UInt;
    @:luaDotMethod public static function freeImage(texture: UInt): Void;
    @:luaDotMethod public static function flip(): Void;
    @:luaDotMethod public static function drawImage(x: Float, y: Float, texture: Int, ?color: UInt): Void;
    @:luaDotMethod public static function drawPartialImage(x: Float, y: Float, img_x: Int, img_y: Int, width: Float, height: Float, texture: Int, ?color: UInt): Void;
    @:luaDotMethod public static function drawRotateImage(x: Float, y: Float, texture: Int, radius: Float, ?color: UInt): Void;
    @:luaDotMethod public static function drawScaleImage(x: Float, y: Float, texture: Int, scale_x: Float, scale_y: Float, ?color: UInt): Void;
    @:luaDotMethod public static function drawImageExtended(x: Float, y: Float, img_x: Int, img_y: Int, width: Float, height: Float, radius: Float, scale_x: Float, scale_y: Float, texture: Int, ?color: UInt): Void;
    @:luaDotMethod public static function fillRect(x1: Float, x2: Float, y1: Float, y2: Float, color: UInt): Void;
    @:luaDotMethod public static function fillEmptyRect(x1: Float, x2: Float, y1: Float, y2: Float, color: UInt): Void;
    @:luaDotMethod public static function drawLine(x1: Float, x2: Float, y1: Float, y2: Float, color: UInt): Void;
    @:luaDotMethod public static function drawCircle(x1: Float, x2: Float, radius: Int, color: UInt): Void;
    @:luaDotMethod public static function getImageWidth(texture: Int): Int;
    @:luaDotMethod public static function getImageHeight(texture: Int): Int;
    @:luaDotMethod public static function convertFrom(image: Int): Int;
    @:luaDotMethod public static function getPixel(x: Int, y: Int, texture: Int): UInt;
    @:luaDotMethod public static function setViewport(x: Int, y: Int, w: Int, h: Int, view_mode: Dynamic): UInt;
}
