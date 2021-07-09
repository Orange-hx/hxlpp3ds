package hxlpp3ds;

import haxe.extern.EitherType;

@:enum abstract SoundType(Int) {
    var MONO = 1;
    var STEREO = 2;
}

@:native("Sound")
extern class Sound {
    public function new();
    @:luaDotMethod public static function init(): Void;
    @:luaDotMethod public static function term(): Void;
    @:luaDotMethod public static function openWav(filename: String, ?use_streaming: Bool): Dynamic;
    @:luaDotMethod public static function openAiff(filename: String, ?use_streaming: Bool): Dynamic;
    @:luaDotMethod public static function openOgg(filename: String, ?use_streaming: Bool): Dynamic;
    @:luaDotMethod public static function updateStream(): Void;
    @:luaDotMethod public static function isPlaying(wav_file: Dynamic): Bool;
    @:luaDotMethod public static function play(wav_file: Dynamic, loop: Int): Void;
    @:luaDotMethod public static function close(wav_file: Dynamic): Void;
    @:luaDotMethod public static function pause(wav_file: Dynamic): Void;
    @:luaDotMethod public static function resume(wav_file: Dynamic): Void;
    @:luaDotMethod public static function saveWav(wav_file: Dynamic, filename: String): Void;
    @:luaDotMethod public static function getTotalTime(wav_file: Dynamic): Int;
    @:luaDotMethod public static function getTime(wav_file: Dynamic): Int;
    @:luaDotMethod public static function getSrate(wav_file: Dynamic): Int;
    @:luaDotMethod public static function getTitle(wav_file: Dynamic): String;
    @:luaDotMethod public static function getAuthor(wav_file: Dynamic): String;
    @:luaDotMethod public static function getType(wav_file: Dynamic): EitherType<Int, SoundType>;
    @:luaDotMethod public static function getService(wav_file: Dynamic): String;
}
