[y , Fs] = audioread ('eco_sound.wav');

output = zeros(164000,1);
input = zeros(164000,1);
input(1) = 1;
output(1) = 1;
output(4001) = 0.5;

in_f = fft(input);
out_f = fft(output);

Sys_R = in_f./out_f;
Sys_R_Inv = ifft(Sys_R);

% convolution
infour=fft(y);
inconv = infour .* Sys_R;
new_sound=ifft(inconv);


plot(Sys_R_Inv)
audiowrite ('sound_no_eco.wav', new_sound, Fs);
sound(new_sound);