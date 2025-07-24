package;

import states.PlayState;

import flixel.FlxGame;
import openfl.display.Sprite;
import backend.Mods;
class Main extends Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, PlayState));
	}
}
