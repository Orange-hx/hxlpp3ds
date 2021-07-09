package hxlpp3ds;

@:native("Render")
extern class Render {
    public function new();
    @:luaDotMethod public static function init(w: Int, h: Int, color: UInt): Void;
    @:luaDotMethod public static function term(): Void;
    @:luaDotMethod public static function createVertex(x: Float, y: Float, z: Float, tex_x: Float, tex_y: Float, norm_x: Float, norm_y: Float, norm_z: Float): Dynamic;
    @:luaDotMethod public static function loadModel(vertex_table: Array<Dynamic>, texture: String, ambient: Dynamic, diffuse: Dynamic, specular: Dynamic, shininess: Dynamic): UInt;
    @:luaDotMethod public static function loadObject(filename: String, texture: String, ambient: Dynamic, diffuse: Dynamic, specular: Dynamic, shininess: Dynamic): UInt;
    @:luaDotMethod public static function unloadModel(model_id: UInt): UInt;
    @:luaDotMethod public static function initBlend(screen: Dynamic, ?eye: Dynamic): Void;
    @:luaDotMethod public static function termBlend(): Void;
    @:luaDotMethod public static function drawModel(model_id: UInt, x: Float, y: Float, z: Float, angle_x: Float, angle_y: Float): Void;
    @:luaDotMethod public static function createColor(r: Float, g: Float, b: Float, a: Float): Dynamic;
    @:luaDotMethod public static function convertColorFrom(color: UInt): Dynamic;
    @:luaDotMethod public static function setLightColor(color: Dynamic): Void;
    @:luaDotMethod public static function setLightSource(x: Float, y: Float, z: Float): Void;
    @:luaDotMethod public static function useMaterial(model: UInt, ambient: Dynamic, diffuse: Dynamic, specular: Dynamic, shininess: Dynamic): Void;
    @:luaDotMethod public static function useTexture(model: UInt, texture: String): Void;
}
