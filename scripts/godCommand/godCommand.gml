/// @desc Toggle the player gode mode ON/OFF
/// @arg args of the command : god

var inGodMod = false;
with (playerObject) {
	canBeHit = !canBeHit;
	inGodMod = !canBeHit;
}

commandResultColor = c_yellow;
commandResult = "God mode: " + (inGodMod ? "ON" : "OFF");