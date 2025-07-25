package states;

import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;

import flixel.FlxState;
import flixel.FlxSprite;
import flixel.FlxG;
import backend.Paths;
import flixel.util.FlxTimer;


class TitleSplashState extends FlxState
{
    var title:FlxSprite;

    override function create()
    {
        super.create();

        //FlxG.sound.play(Paths.getFile(Paths.SOUNDS + "audio_intronoise"));
        FlxG.sound.play("assets/sounds/audio_intronoise.ogg");

        title = new FlxSprite(FlxG.width/2, FlxG.height/2);
        //title.loadGraphic(Paths.getFile(Paths.IMAGES + "IMAGE_LOGO_0"));
        title.loadGraphic("assets/images/IMAGE_LOGO_0.png");
        title.scale.x = 2;
        title.scale.y = 2;
        title.screenCenter();
        title.alpha = 0;
        add(title);
        FlxTween.tween(title, { alpha: 1 }, 3, {
        ease: FlxEase.quadOut
        });

        new FlxTimer().start(10, (_) -> {
            FlxG.switchState(new PlayState());
        });
    }
}