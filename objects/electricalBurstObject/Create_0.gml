/// @description Emit electircal particles + stop sound

// Inherit the parent event
event_inherited();

emitElectricalParticles(3, 6, 5);

audio_stop_sound(currentSound);
