package backend;

import flixel.FlxState;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;

import sys.io.File;

import crowplexus.iris.Iris;
import crowplexus.iris.IrisConfig;

import backend.Paths;

class HScriptRunner {
    public function runFile(file:String)
    {
        var scriptText = File.getContent(Paths.getFile(SCRIPTS + file));

        var config = new IrisConfig("", false);
		config.autoRun = false;
		config.autoPreset = true;

		var iris = new Iris(scriptText, config);


        iris.set("state", this, true);
        iris.set("FlxG", FlxG, true);
        iris.set("FlxText", FlxText, true);
        iris.set("FlxSprite", FlxSprite, true);
		iris.set("CENTER", CENTER, true);

        iris.execute();

        iris.call("main");
    }
}