package backend;

import backend.Control;

typedef Controls = {
    var UP:Control;
    var DOWN:Control;
    var RIGHT:Control;
    var LEFT:Control;
    var ACCEPT:Control;
    var CANCEL:Control;
    var MENU:Control;
}



class ClientPrefs {

    public static var controls:Controls = defaultControls();

    static function defaultControls():Controls
        return {
            UP: new Control("UP"),
            DOWN: new Control("DOWN"),
            RIGHT: new Control("RIGHT"),
            LEFT: new Control("LEFT"),
            ACCEPT: new Control("Z"),
            CANCEL: new Control("X"),
            MENU: new Control("C")
        }
} //will get to this later.