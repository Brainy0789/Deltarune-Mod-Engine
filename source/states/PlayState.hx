package states;

import flixel.FlxState;
import objects.Player;
import flixel.FlxG;
import backend.ClientPrefs;
class PlayState extends FlxState
{
	var player:Player;
	override public function create()
	{
		super.create();
		player = new Player(FlxG.width, FlxG.height);
		add(player);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (cast(ClientPrefs.controls.LEFT.justPressed))
			trace("LEFT PRESS REAL");
	}
}