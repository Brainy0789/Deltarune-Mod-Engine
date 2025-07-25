package backend;

import backend.Mods;

#if sys
import sys.FileSystem;
#end

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

    public static function getFile(path:String):String //this is used to check for files in the mod folder. Should be used for every asset in the game so mods folder can overwrite assets. DON'T PREFIX WITH assets/!!!
    {
        var finalPath:String = "assets/" + path;
        Mods.instance.getModFolders("mods"); //(Re)Initialize the modFolders array, should allow for dynamic mod loading with restarting in the future

        var curPath:String;

        //First, check mods folder for the assets.

        for (mod in Mods.instance.modFolders) {
            curPath = MODS + mod + "/" + path;
            #if sys
            if (FileSystem.exists(curPath))
                finalPath = curPath;
            #end

        }
        return finalPath;
    }
}