// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function canBeHitBy(target) {
	return self.canBeHit and !isDying and !target.isDying and !target.inGravityBubble and invulCounter == 0;
}