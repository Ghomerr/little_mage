/// @description Emit electircal particles + stop sound

// Inherit the parent event
event_inherited();

emitElectricalParticles(3, 6, 5, 1, 2);

audio_stop_sound(currentSound);
