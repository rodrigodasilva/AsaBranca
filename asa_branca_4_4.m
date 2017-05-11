%Tocando Asa Branca 4/4 Metronomo 110
%Rodrigo da Silva Ribeiro

clear;

fs = 8000;
Ts = 1/fs;
t = [0:Ts:3]; %Tempo de 0 a 3, tendo o período como incremento
metronomo = 220;

%Duracao
semileve = 4*60/metronomo;
minima = 2*60/metronomo;
seminima = 1*60/metronomo;
colcheia = 0.5*60/metronomo;

%Pausa
pausa_minima = sin(2*pi*0*(0:Ts:minima));
pausa_seminima = sin(2*pi*0*(0:Ts:seminima));
pausa_colcheia = sin(2*pi*0*(0:Ts:colcheia));

%Notas
Do_sl = sin(2*pi*261.6*(0:Ts:semileve)); %Do_semileve
Do_m = sin(2*pi*261.6*(0:Ts:minima));    %Do_minima
Do_sm = sin(2*pi*261.6*(0:Ts:seminima)); %Do_seminima
Do_c = sin(2*pi*261.6*(0:Ts:colcheia));  %Do_colcheia
Re_m = sin(2*pi*293.7*(0:Ts:minima));    %Ré_minima
Re_sm = sin(2*pi*293.7*(0:Ts:seminima)); %Ré_seminima
Mi_sl = sin(2*pi*329.6*(0:Ts:semileve)); %Mi_semileve
Mi_m = sin(2*pi*329.6*(0:Ts:minima));    %Mi_minima
Mi_sm = sin(2*pi*329.6*(0:Ts:seminima)); %Mi_seminima
Mi_c = sin(2*pi*329.6*(0:Ts:colcheia));  %Mi_colcheia 
Fa_m = sin(2*pi*349.2*(0:Ts:minima));    %Fa_minima
Fa_sm = sin(2*pi*349.2*(0:Ts:seminima)); %Fa_seminima
Fa_c = sin(2*pi*349.2*(0:Ts:colcheia));  %Fa_colcheia
Sol_m = sin(2*pi*392*(0:Ts:minima));     %Sol_minima
Sol_sm = sin(2*pi*392*(0:Ts:seminima));  %Sol_seminima
Sol_c = sin(2*pi*392*(0:Ts:colcheia));   %Sol_colcheia
La_sm = sin(2*pi*440*(0:Ts:seminima));   %Lá_seminima
Si_sm = sin(2*pi*493.9*(0:Ts:seminima)); %Si_seminima

%Nota Bemol
Si_bemol = sin(2*pi*466.2*(0:Ts:seminima)); %Si_Bemol

%La uplementar
La_suplementar = sin(2*pi*220*(0:Ts:seminima));


parte1 = [pausa_minima, Do_sm, Re_sm, Mi_m, Sol_m, Sol_m, Mi_m, Fa_m, Fa_m, pausa_minima, Do_sm, Re_sm];
parte2 = [Mi_m, Sol_m, Sol_m, Fa_m, Mi_sl, pausa_seminima, Do_sm, Do_sm, Re_sm, Mi_m, Sol_m];
parte3 = [pausa_seminima, Sol_sm, Fa_sm, Mi_sm, Do_m, Fa_m, pausa_seminima, Mi_sm, Mi_sm, Re_sm, Re_m, Mi_m, pausa_seminima, Re_sm, Re_sm, Do_sm]; 
parte4 = [Do_sl, pausa_minima, pausa_seminima, Do_sm, Do_sm, Re_sm, Mi_m, Sol_m, pausa_seminima, Sol_sm, Fa_sm, Mi_sm, Do_m, Fa_m];
parte5 = [pausa_seminima, Mi_sm, Mi_sm, Re_sm, Re_m, Mi_m, pausa_seminima, Re_sm, Re_sm, Do_sm, Do_m, Si_bemol, Sol_sm, La_sm, Fa_sm, Sol_sm, Mi_sm];
parte6 = [Fa_sm, Re_sm, Mi_sm, Do_sm, Re_sm, Do_sm, La_suplementar, Do_sm, Do_m, Si_bemol, Sol_sm];
parte7 = [La_sm, Fa_sm, Sol_sm, Mi_sm, Fa_sm, Re_sm, Mi_sm, Do_sm, Re_sm, Do_sm, La_suplementar, Do_sm, Do_m];

asa_branca = [parte1, parte2, parte3, parte4, parte5, parte6, parte7];
sound(asa_branca);

solo = [Si_bemol, Sol_sm, La_sm, Fa_sm, Sol_sm, Mi_sm, Fa_sm, Re_sm, Mi_sm, Do_sm, Re_sm, Do_sm, La_suplementar, Do_sm, Do_m];
%sound(solo);

% Grafico no dominio da frequencia 
%subplot(422);
my_fft(solo, fs);
title('Solo no domínio da frequência')
ylabel('Amplitude')
xlabel('Frequência (Hz)');
