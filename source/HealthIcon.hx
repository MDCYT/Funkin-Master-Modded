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
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1, 10], 0, false, isPlayer);
		animation.add('dae', [0, 1, 10], 0, false, isPlayer);
		animation.add('bf-car', [0, 1, 10], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1, 10], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 21, 10], 0, false, isPlayer);
		animation.add('spooky', [2, 3, 10], 0, false, isPlayer);
		animation.add('pico', [4, 5, 10], 0, false, isPlayer);
		animation.add('mom', [6, 7, 10], 0, false, isPlayer);
		animation.add('mom-car', [6, 7, 10], 0, false, isPlayer);
		animation.add('tankman', [8, 9, 10], 0, false, isPlayer);
		animation.add('face', [10, 11, 10], 0, false, isPlayer);
		animation.add('dad', [12, 13, 10], 0, false, isPlayer);
		animation.add('senpai', [22, 22, 10], 0, false, isPlayer);
		animation.add('senpai-angry', [22, 22, 10], 0, false, isPlayer);
		animation.add('spirit', [23, 23, 10], 0, false, isPlayer);
		animation.add('bf-old', [14, 15, 10], 0, false, isPlayer);
		animation.add('gf', [16, 16, 10], 0, false, isPlayer);
		animation.add('parents-christmas', [17, 17, 10], 0, false, isPlayer);
		animation.add('monster', [19, 20, 10], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20, 10], 0, false, isPlayer);
		animation.add('morado', [24, 25, 10], 0, false, isPlayer);
		animation.add('azul', [26, 27, 10], 0, false, isPlayer);
		animation.play(char);
		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
