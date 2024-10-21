package states;

import flixel.graphics.FlxGraphic;
import sys.FileSystem;
import flixel.tweens.FlxTween;

class WarningState extends MusicBeatState
{
    override public function create()
    {
      FlxG.mouse.visible = false;
      var warnthisshit:FlxSprite;
      warnthisshit = new FlxSprite();
      warnthisshit.loadGraphic(Paths.image("Menu_Assets/Warning/warn"));
      warnthisshit.alpha = 0;
      add(warnthisshit);
{
	  FlxG.sound.muteKeys = TitleState.muteKeys;
      FlxG.sound.volumeDownKeys = TitleState.volumeDownKeys;
      FlxG.sound.volumeUpKeys = TitleState.volumeUpKeys;    
      FlxTween.tween(warnthisshit, {alpha: 1}, 3.4, {ease: FlxEase.quadInOut,
        onComplete: function(twn:FlxTween)
          {
            FlxTween.tween(warnthisshit, {alpha: 0}, 3.4, {ease: FlxEase.quadInOut, 
              onComplete: function(twn:FlxTween){
                MusicBeatState.switchState(new TitleState());
			}});
		}
	  });
	  }
  }
}