package hxlpp3ds;

@:native("Camera")
extern class Camera {
    public function new();
    @:luaDotMethod public static function init(screen: Int, camera: Int, photo_mode: Int, ?is3D: Bool): Void;
    @:luaDotMethod public static function getOutput(): Void;
    @:luaDotMethod public static function takePhoto(filename: String, resolution: Int, ?jpg_compression: Bool): Void;
    @:luaDotMethod public static function takeImage(): UInt;
    @:luaDotMethod public static function term(): Void;
}