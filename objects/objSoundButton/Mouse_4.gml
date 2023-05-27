if(ww.state != "play"){ return; }

ww.soundOn = !ww.soundOn;

image_index += ww.soundOn ? 1 : -1;

if(!ww.soundOn){ audio_stop_all(); }