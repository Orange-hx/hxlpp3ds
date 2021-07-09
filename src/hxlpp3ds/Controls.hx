package hxlpp3ds;

@:multiReturn
extern class Vec2 {
    var x: Int;
    var y: Int;
}

@:multiReturn
extern class Vec3 {
    var x: Int;
    var y: Int;
    var z: Int;
}

@:native("Controls")
extern class Controls {
    public function new();
    @:luaDotMethod public static function read(): UInt;
    @:luaDotMethod public static function check(controls: UInt, button: UInt): Bool;
    @:luaDotMethod public static function readCirclePad(): Vec2;
    @:luaDotMethod public static function readCstickPad(): Vec2;
    @:luaDotMethod public static function readTouch(): Vec2;
    @:luaDotMethod public static function getVolume(): Int;
    @:luaDotMethod public static function headsetStatus(): Bool;
    @:luaDotMethod public static function shellStatus(): Bool;
    @:luaDotMethod public static function enableScreen(screen: Dynamic): Void;
    @:luaDotMethod public static function disableScreen(screen: Dynamic): Void;
    @:luaDotMethod public static function enableGyro(): Void;
    @:luaDotMethod public static function disableGyro(): Void;
    @:luaDotMethod public static function enableAccel(): Void;
    @:luaDotMethod public static function readGyro(): Vec3;
    @:luaDotMethod public static function readAccel(): Vec3;
}
