[y , Fs] = audioread('sound.wav');
a = 0.5;
n1 = 4000;
eco_sound = zeros (20 * Fs + 4000, 1) ;

% First For
for i = 1 : 4000;
    eco_sound(i) = y(i);
end
% Second For
for i = 4001 : 20 * Fs;
    eco_sound(i) = y (i) + a*y(i-n1);
end
% Third For
for i = 20 * Fs + 1 : 20 * Fs + 4000;
    eco_sound(i) = a*y(i-n1);
end
% Write to file
audiowrite('eco_sound.wav' , eco_sound , Fs);
sound(eco_sound);

% Drawing Plots
subplot (2, 1 ,1)
plot(y)
subplot (2, 1 ,2)
plot(eco_sound)
