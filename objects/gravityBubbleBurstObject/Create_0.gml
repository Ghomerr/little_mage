/// @description Play pop sound

// Inherit the parent event
event_inherited();

audio_sound_pitch(gravityBurstSound, choose(0.9, 1.0, 1.1));
audio_play_sound(gravityBurstSound, 3, false);