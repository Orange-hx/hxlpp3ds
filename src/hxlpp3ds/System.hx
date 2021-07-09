package hxlpp3ds;

import haxe.Int64;
import haxe.extern.EitherType;

@:multiReturn
extern class Version {
    var major: UInt;
    var minor: UInt;
    var revision: UInt;
}

@:multiReturn
extern class Birthday {
    var day: UInt;
    var month: UInt;
}

@:multiReturn
extern class SystemTime {
    var h: UInt;
    var m: UInt;
    var s: UInt;
}

@:multiReturn
extern class SystemDate {
    var day_value: Int;
    var day: Int;
    var month: Int;
    var year: Int;
}

@:enum abstract BuildType(Int) {
    var TYPE_NH1 = 0;
    var TYPE_3DS = 1;
    var TYPE_CIA = 1;
    var TYPE_NH2 = 2;
}

@:enum abstract DeviceModel(Int) {
    var CTR = 0;    // Nintendo 3DS
    var SPR = 1;    // Nintendo 3DS XL
    var KTR = 2;    // New_3DS
    var FTR = 3;    // Nintendo 2DS
    var RED = 4;    // New_3DS XL
    var JAN = 5;    // New_NDS XL
}

@:native("System")
extern class System {
    public function new();
    @:luaDotMethod public static function exit(): Void;
    @:luaDotMethod public static function getFirmware(): Version;
    @:luaDotMethod public static function getKernel(): Version;
    @:luaDotMethod public static function getRegion(): Int;
    @:luaDotMethod public static function getUsername(): String;
    @:luaDotMethod public static function getBirthday(): Birthday;
    @:luaDotMethod public static function takeScreenshot(filename: String, ?jpg_compression: Bool): Void;
    @:luaDotMethod public static function checkBuild(): EitherType<Int, BuildType>;
    @:luaDotMethod public static function currentDirectory(?path: String): String;
    @:luaDotMethod public static function deleteFile(path: String, ?extdata_archive: UInt): Void;
    @:luaDotMethod public static function deleteDirectory(path: String, ?extdata_archive: UInt): Void;
    @:luaDotMethod public static function renameDirectory(path: String, path2: String): Void;
    @:luaDotMethod public static function renameFile(path: String, path2: String): Void;
    @:luaDotMethod public static function createDirectory(path: String, ?extdata_archive: UInt): Void;
    @:luaDotMethod public static function doesFileExist(path: String): Bool;
    @:luaDotMethod public static function listDirectory(path: String): Dynamic;
    @:luaDotMethod public static function isBatteryCharging(): Bool;
    @:luaDotMethod public static function getBatteryLife(): Int;
    @:luaDotMethod public static function getModel(): EitherType<Int, DeviceModel>;
    @:luaDotMethod public static function getLanguage(): Int;
    @:luaDotMethod public static function launch3DSX(filename: String): Void;
    @:luaDotMethod public static function launchPayload(filename: String, offset: UInt): Void;
    @:luaDotMethod public static function launchCIA(unique_id: UInt, mediatype: UInt): Void;
    @:luaDotMethod public static function extractSMDH(filename: String): Dynamic;
    @:luaDotMethod public static function listExtdataDir(path: String, archive: Int64): Dynamic;
    @:luaDotMethod public static function scanExtdata(): Dynamic;
    @:luaDotMethod public static function listCIA(): Dynamic;
    @:luaDotMethod public static function uninstallCIA(delete_id: UInt, mediatype: UInt): Void;
    @:luaDotMethod public static function extractFromZIP(zip_file: String, file: String, path_to_extract: String, ?password: String): Void;
    @:luaDotMethod public static function extractZIP(zip_file: String, path_to_extract: String, ?password: String): Void;
    @:luaDotMethod public static function extractCIA(file: String): Dynamic;
    @:luaDotMethod public static function checkStatus(): UInt;
    @:luaDotMethod public static function showHomeMenu(): Void;
    @:luaDotMethod public static function reboot(): Void;
    @:luaDotMethod public static function launchGamecard(): Void;
    @:luaDotMethod public static function getFreeSpace(): Int64;
    @:luaDotMethod public static function getTime(): SystemTime;
    @:luaDotMethod public static function getDate(): SystemDate;
    @:luaDotMethod public static function getGWRomID(): String;
    @:luaDotMethod public static function addNews(title: String, text: String, image: Dynamic, is_file: Bool): Void;
    @:luaDotMethod public static function listNews(): Dynamic;
    @:luaDotMethod public static function getNews(news_id: UInt): String;
    @:luaDotMethod public static function eraseNews(news_id: UInt): Void;
    @:luaDotMethod public static function checkSDMC(): Bool;
    @:luaDotMethod public static function setCpuSpeed(value: Int): Void;
    @:luaDotMethod public static function getCpuSpeed(value: Int): Bool;
    @:luaDotMethod public static function fork(mem_block: Int): Bool;
}
