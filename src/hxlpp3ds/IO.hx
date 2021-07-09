package hxlpp3ds;

import haxe.Int64;

typedef FileStream = Dynamic;

@:native("io")
extern class IO {
    public function new();
    @:luaDotMethod public static function open(file: String, attribute: Int, ?extdata_archive: Int64, ?filesize: UInt): FileStream;
    @:luaDotMethod public static function read(filestream: FileStream, offset: Int64, size: Int64): String;
    @:luaDotMethod public static function write(filestream: FileStream, offset: Int64, text: String, size: Int64): Void;
    @:luaDotMethod public static function size(filestream: FileStream): Int64;
    @:luaDotMethod public static function close(filestream: FileStream, ?extdata_file: Bool): Void;
}
