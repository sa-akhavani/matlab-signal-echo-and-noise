[y , Fs] = audioread ('sound.wav');
a = 0.5;
n1 = 4000;
eco_sound = zeros (20 * Fs + 4000,1 ) ;

NUM = 1;
DEN = [1 zeros(1, 3999) 0.5];
modified_sound = filter(NUM, DEN, eco_sound);
filt(1 , DEN)
freqz(1, DEN);
audiowrite ('modified_sound.wav' , modified_sound , Fs);
sound (modified_sound);
%plot(w, abs(h));