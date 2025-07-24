package objects;

import flixel.FlxSprite;
import backend.Paths;

class Player extends FlxSprite
{
    public var direction:String;
    public var sprite:String;
    public var curFrame:Int;
    public var character:String;

    override public function new(x:Float, y:Float, ?character:String = "kris", ?sprite:String = "dark", ?direction:String = "d", ?frame:Int = 0) //direction is l, r, u, d, that kinda thing
    {
        super(x, y, Paths.IMAGES + formatImageString(character, sprite, direction, frame));
        this.direction = direction;
        this.sprite = sprite;
        this.curFrame = frame;
        this.character = character;
    }

    public function formatImageString(character:String, sprite:String, direction:String, frame:Int):String
        return "character/" + character + "/spr_" + character + direction + "_" + sprite + "_" + frame;
}