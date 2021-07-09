package hxlpp3ds;

@:native("Network")
extern class Network {
    public function new();
    @:luaDotMethod public static function isWifiEnabled(): Bool;
    @:luaDotMethod public static function getMacAddress(): String;
    @:luaDotMethod public static function getIPAddress(): String;
    @:luaDotMethod public static function updateFTP(): String;
    @:luaDotMethod public static function downloadFile(url: String, filename: String, ?userAgent: String, ?method: Int, ?post_data: Int): Void;
    @:luaDotMethod public static function requestString(url: String, ?userAgent: String, ?method: Int, ?post_data: Int): String;
    @:luaDotMethod public static function sendMail(to: String, subject: String, body: String): Bool;
    @:luaDotMethod public static function getWifiLevel(): Int;
    @:luaDotMethod public static function addCertificate(filename: String): Int;
}
