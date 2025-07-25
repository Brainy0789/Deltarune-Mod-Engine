package;

import states.TitleSplashState;

import flixel.FlxGame;
import openfl.display.Sprite;
import haxe.CallStack;

class Main extends Sprite
{
	public function new()
	{
		super();

		// Optional: make trace logs show more helpful info
		haxe.Log.trace = function(v:Dynamic, ?infos:haxe.PosInfos) {
			Sys.println(v);
			if (infos != null)
				Sys.println('From ${infos.className}.${infos.methodName} (${infos.lineNumber})');
		};

		try {
			// Boot FlxGame
			addChild(new FlxGame(0, 0, TitleSplashState, 30, 30, true));
		} catch (e:Dynamic) {
			trace("Unhandled Error: " + e);
			trace("Stack Trace:\n" + CallStack.toString(CallStack.exceptionStack()));
		}
	}
}
