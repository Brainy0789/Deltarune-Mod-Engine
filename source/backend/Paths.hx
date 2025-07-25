package backend;

import backend.Mods;

import sys.FileSystem;

class Paths
{
    public static var ASSETS:String = "assets/";
    public static var DATA:String = "data/";
    public static var IMAGES:String = "images/";
    public static var MUSIC:String = "music/";
    public static var SOUNDS:String = "sounds/";
    public static var SCRIPTS:String = "scripts/";
    public static var MODS:String = "mods/";

    public var instance:Paths;

    public function new() {
        instance = this;
    }

    public static function getFile(path:String):String
    {
        if (Mods.instance == null) {
            trace("Mods.instance was null! Creating a new one.");
            Mods.instance = new Mods();
        }

        var finalPath:String = "assets/" + path;

        Mods.instance.getModFolders("mods");

        for (mod in Mods.instance.modFolders) {
            var curPath = MODS + mod + "/" + path;
            if (FileSystem.exists(curPath)) {
                finalPath = curPath;
            }
        }

        return finalPath;
    }

}