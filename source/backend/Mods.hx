package backend;

#if sys
import sys.FileSystem;
#end

class Mods
{
    public var modFolders:Array<String>;
    public static var instance:Mods;

    public function new()
    {
        modFolders = new Array<String>();
        instance = this;
    }

    public function getModFolders(modsPath:String) {
        var mods:Array<String> = new Array<String>();
        if (FileSystem.exists(modsPath) && FileSystem.isDirectory(modsPath)) {
            var entries = FileSystem.readDirectory(modsPath);
            for (entry in entries) {
                var fullPath = modsPath + "/" + entry;
                if (FileSystem.isDirectory(fullPath)) {
                    modFolders.push(entry);
                }
            }
        }

        this.modFolders = mods;
    }
}