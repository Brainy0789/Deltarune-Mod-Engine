package backend;

import flixel.FlxG;

class Control
{
    var possibleControls:Array<String>;
    public var control:String;

    public function new(cont:String)
    {
        possibleControls = [
            "UP",
            "LEFT",
            "DOWN",
            "RIGHT",
            "A",
            "B",
            "C",
            "D",
            'E',
            "F",
            "G",
            "H",
            "I",
            "J",
            "K",
            "L",
            "M",
            "N",
            "O",
            "P",
            "Q",
            "R",
            "S",
            "T",
            "U",
            "V",
            "W",
            "X",
            "Y",
            "Z",
            "`",
            "1",
            "2",
            "3",
            "4",
            "5",
            "6",
            "7",
            "8",
            "9",
            "0",
            "-",
            "=",
            "LBRACKET",
            "RBRACKET",
            "\\",
            ";",
            "'",
            ",",
            ".",
            "/",
            "TAB",
            "ENTER",
            "LSHIFT",
            "RSHIFT",
            "CONTROL"
        ];

        this.control = cont;
    }

    public function justPressed():Bool
    {
        switch (control) {
            case "UP":
                return FlxG.keys.justPressed.UP;
            case "DOWN":
                return FlxG.keys.justPressed.DOWN;
            case "LEFT":
                return FlxG.keys.justPressed.LEFT;
            case "RIGHT":
                return FlxG.keys.justPressed.RIGHT;
            case "Z":
                return FlxG.keys.justPressed.Z;
            case "X":
                return FlxG.keys.justPressed.X;
            case "C":
                return FlxG.keys.justPressed.C;
        }
        return false;
    }
}