package states;

import flixel.FlxSubState;

import flixel.effects.FlxFlicker;
import lime.app.Application;
import flixel.addons.transition.FlxTransitionableState;

class RemoveState extends MusicBeatState
{
	public static var leftState:Bool = true;

	var warnText:FlxText;
	override function create()
	{
		super.create();
        MusicBeatState.switchState(new TitleState());
		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);
	}

				}
	
