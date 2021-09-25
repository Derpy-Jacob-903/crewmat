package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;



	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		switch(char){
			case 'crew' | 'wires' | 'green' | 'impostor' | 'sus' | 'mongus' | 'duo':
				loadGraphic(Paths.image('iconGridMongus'), true, 150, 150);
				animation.add('crew', [0, 1], 0, false, isPlayer);
				animation.add('wires', [0, 1], 0, false, isPlayer);
				animation.add('impostor', [4, 5], 0, false, isPlayer);
				animation.add('sus', [2, 3], 0, false, isPlayer);
				animation.add('duo', [6, 6], 0, false, isPlayer);
				animation.add('mongus', [8, 9], 0, false, isPlayer);
				animation.add('green', [10, 11], 0, false, isPlayer);
			case 'duo-eevee' | 'cloud' | 'duo-right' | 'eevee' | 'shade' | 'noctapolar':
				loadGraphic(Paths.image('iconGridEEVEE'), true, 150, 150);
				animation.add('duo-eevee', [0, 0], 0, false, isPlayer);
				animation.add('cloud', [1, 1], 0, false, isPlayer);
				animation.add('noctapolar', [2, 2], 0, false, isPlayer);
				animation.add('duo-right', [3, 3], 0, false, isPlayer);
				animation.add('shade', [4, 4], 0, false, isPlayer);
				animation.add('eevee', [5, 5], 0, false, isPlayer);
			case _:
				loadGraphic(Paths.image('iconGrid'), true, 150, 150);
				animation.add('bf', [0, 1], 0, false, isPlayer);
				animation.add('bf-old', [14, 15], 0, false, isPlayer);
				animation.add('gf', [16, 16], 0, false, isPlayer);
				animation.add('dad', [13, 13], 0, false, isPlayer);
				animation.add('bf-car', [0, 1], 0, false, isPlayer);
				animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
				animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
				animation.add('spooky', [2, 3], 0, false, isPlayer);
				animation.add('pico', [4, 5], 0, false, isPlayer);
				animation.add('mom', [6, 7], 0, false, isPlayer);
				animation.add('mom-car', [6, 7], 0, false, isPlayer);
				animation.add('tankman', [8, 9], 0, false, isPlayer);
				animation.add('face', [10, 11], 0, false, isPlayer);
				animation.add('dad', [12, 13], 0, false, isPlayer);
				animation.add('senpai', [22, 22], 0, false, isPlayer);
				animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
				animation.add('spirit', [23, 23], 0, false, isPlayer);
				animation.add('parents-christmas', [17], 0, false, isPlayer);
				animation.add('monster', [19, 20], 0, false, isPlayer);
				animation.add('monster-christmas', [19, 20], 0, false, isPlayer);
		}
		antialiasing = true;
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
