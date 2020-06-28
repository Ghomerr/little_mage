/// @description Play sound depending of death hearts
var soundPitch = 1.1 - 0.1 * playerObject.deathHearts;
audio_sound_pitch(sound, soundPitch);
audio_play_sound(sound, 5, false);