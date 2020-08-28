/// @desc Spawn coins according to the given text
/// @arg args of the command : cointext <characters>
function cointextCommand(args) {

	var CHARACTERS = [
		"OOOO OO OO OOOO", // zero
		" O OO  O  O  O ", // one
		"OOO  OOOOO  OOO", // two
		"OOO  OOOO  OOOO", // three
		"O  O OOOO  O  O", // four
		"OOOO  OOO  OOOO", // five
		"OOOO  OOOO OOOO", // six
		"OOO  O OO  O  O", // seven
		"OOOO OOOOO OOOO", // eight
		"OOOO OOOO  OOOO"  // nine
	];

	if (argument_count == 1 and array_length(args) >= 2) {
	
		var coinText = string_digits(args[1]); // TODO : handle characters later
	
		with (playerObject) {	
			var startX = (sign(image_xscale) ? ceil (x / gameManager.TILE_SIZE) + 2 : floor(x / gameManager.TILE_SIZE) - 2) * gameManager.TILE_SIZE;
			var startY = (ceil(y / gameManager.TILE_SIZE) - 5) * gameManager.TILE_SIZE;
	
			var posX = 0;
			var posY = 0;
			var charCounter = 0;
	
			for (var l = 1; l <= string_length(coinText); l++) {
				var letter = string_char_at(coinText, l);
				var charArray = CHARACTERS[letter];
				var charArrayLen = string_length(charArray);
				charCounter = 0;
				if (charArrayLen > 0) {
					for (var row = 0; row < 5; row++) {
						for (var col = 0; col < 3; col++) {
							if (string_char_at(charArray, ++charCounter) == "O") {
								posX = startX + col * gameManager.TILE_SIZE;
								posY = startY + row * gameManager.TILE_SIZE;
								instance_create_layer(posX, posY, global.entitiesLayer, goldCoinObject);
							}
						}
					}
				} else {
					other.commandResultColor = c_red;
					other.commandResult = "Unkown character to write: '" + letter + "'. Type help cointext to see the usage.";
					return;
				}
			
				startX += gameManager.TILE_SIZE * 4;
			}
		}
	
		commandResultColor = c_yellow;
		commandResult = "Successfully spawned coins to write: " + coinText;
	
	} else {
		commandResultColor = c_red;
		commandResult = "Invalid cointext arguments. Type help cointext to see the usage.";
	}


}
