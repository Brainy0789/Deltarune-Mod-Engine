package;

import states.TitleSplashState;

import flixel.FlxGame;
import openfl.display.Sprite;
class Main extends Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, TitleSplashState, 30, 30, true));
	}
}
