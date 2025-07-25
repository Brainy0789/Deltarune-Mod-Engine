package states;

import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;

import flixel.FlxState;
import flixel.FlxSprite;
import flixel.FlxG;
import backend.Paths;
import flixel.util.FlxTimer;
import states.ModSelectState;

class TitleSplashState extends FlxState
{
    var title:FlxSprite;

    override function create()
    {
        super.create();

        try {
            var path = Paths.getFile(Paths.SOUNDS + "audio_intronoise.ogg");
            trace(path);
            FlxG.sound.play(Paths.getFile(Paths.SOUNDS + "audio_intronoise.ogg"));

            title = new FlxSprite(FlxG.width/2, FlxG.height/2);
            title.scale.set(2, 2);
            var path = Paths.getFile(Paths.IMAGES + "IMAGE_LOGO_0.png");
            trace(path);
            title.loadGraphic(Paths.getFile(Paths.IMAGES + "IMAGE_LOGO_0.png"));
            

            title.screenCenter();
            title.alpha = 0;
            add(title);

            FlxTween.tween(title, { alpha: 1 }, 3, { ease: FlxEase.quadOut });

            new FlxTimer().start(10, (_) -> FlxG.switchState(new ModSelectState()));
        } catch (e:Dynamic) {
            trace("Error in TitleSplashState.create(): " + e);
            trace(haxe.CallStack.toString(haxe.CallStack.exceptionStack()));
        }
    }

}