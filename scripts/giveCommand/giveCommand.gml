/// @desc give something to the player
/// @arg args of the command
var giveUsage = "Usage: give [staff|hp|coins] (quantity)";

if (argument_count == 1 and array_length_1d(argument0) >= 2) {

	var giveElement = argument0[1];
	
	// Get give quantity
	var quantityString = array_length_1d(argument0) >= 3 ? argument0[2] : "1";
	var quantitySign = string_char_at(quantityString, 1) == "-" ? -1 : 1;
	quantityString = string_digits(quantityString);
	var quantity = quantitySign * (quantityString == "" ? 0 : real(quantityString));
	
	switch (giveElement) {
		case "staff":
			if (instance_exists(playerObject)) {
				with(playerObject) {
					if (hasWeapon) {
						with(staffObject) {
							instance_destroy();	
						}
					} else {
						with(handsObject) {
							instance_destroy();	
						}
					}
					hasWeapon = !hasWeapon;
					createWeaponOrHands();
				}
				commandResultColor = c_yellow;
				commandResult = playerObject.hasWeapon ? "Player received the staff" : "Player lost the staff";
			} else {
				commandResultColor = c_red;
				commandResult = "No Player found";
			}
			break;
			
		case "hp":
			if (instance_exists(playerObject)) {
				with (playerObject) {
					hp += quantity;
					if (hp > initHp) {
						hp = initHp;
					} else if (hp < 0) {
						hp = 0;	
					}
				}
				
				if (quantity > 0) {
					heartSpriteScale = 2;
					emitHealParticles(playerObject, playerObject.spriteWidth);	
					commandResultColor = c_yellow;
					commandResult = "Player received " + quantityString + " hp";
					
				} else if (quantity < 0) {
					heartSpriteScale = 2;
					audio_sound_pitch(manaBoltHitSound, choose(0.8, 1.0, 1.2));
					audio_play_sound(manaBoltHitSound, 5, false);
					with(playerObject) flash = hitDelay;
					commandResultColor = c_yellow;
					commandResult = "Player lost " + quantityString + " hp";
				} else {
					commandResult = "Nothing to give";
				}
				
			} else {
				commandResultColor = c_red;
				commandResult = "No Player found";
			}
			break;
			
		case "coins":
			global.coins += quantity;
			if (quantity > 0) {
				afterUpdateCoinsCounter(2);
				audio_play_sound(coinSound, 1, false);
				commandResultColor = c_yellow;
				commandResult = "Player earned " + quantityString + " coins";
			} else if (quantity < 0) {
				afterUpdateCoinsCounter(2, c_red);
				audio_play_sound(monsterDeadSound, 1, false);
				commandResultColor = c_yellow;
				commandResult = "Player lost " + quantityString + " coins";
			} else {
				commandResult = "Nothing to give";
			}
			break;
			
		default:
			commandResultColor = c_red;
			commandResult = "Unknown give element: " + giveElement + ". " + giveUsage;
			break;
	}
	
} else {
	commandResultColor = c_red;
	commandResult = "Invalid give arguments. " + giveUsage;
}