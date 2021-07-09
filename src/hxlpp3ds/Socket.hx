package hxlpp3ds;

@:native("Socket")
extern class Socket {
    public function new();
    @:luaDotMethod public static function init(): Void;
    @:luaDotMethod public static function term(): Void;
    @:luaDotMethod public static function createServerSocket(port: Int): Int;
    @:luaDotMethod public static function connect(host: String, port: Int, ?use_ssl: Bool): Int;
    @:luaDotMethod public static function send(sock_id: Int, text: String): Void;
    @:luaDotMethod public static function receive(sock_id: Int, size: Int): String;
    @:luaDotMethod public static function accept(sock_id: Int): Int;
    @:luaDotMethod public static function close(sock_id: Int): Void;
}
