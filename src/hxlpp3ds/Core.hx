package hxlpp3ds;

import haxe.extern.Rest;

@:native("Core")
extern class Core {
    public function new();
    @:luaDotMethod public static function checkService(service: String): Bool;
    @:luaDotMethod public static function execCall(syscall: String, args: Rest<Dynamic>): Int;
    @:luaDotMethod public static function getHandle(handle: UInt): UInt;
    @:luaDotMethod public static function readWord(offset: UInt): UInt;
    @:luaDotMethod public static function storeWord(offset: UInt, word: UInt): Void;
    @:luaDotMethod public static function alloc(size: UInt): Void;
    @:luaDotMethod public static function linearAlloc(size: UInt): Void;
    @:luaDotMethod public static function free(offset: UInt): Void;
    @:luaDotMethod public static function linearFree(offset: UInt): Void;
}
