vsp -= jump;
isJumping = true;
downCounter = 0;
ignorePlatform = false;
audio_sound_pitch(jumpSound, choose(0.9, 1.0, 1.1));
audio_play_sound(jumpSound, 5, false);