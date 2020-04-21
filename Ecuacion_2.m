close all
clear all
alpha=.7;
R=2000;
n=0:1:R*R;
ecuacion_2=0;

for i=0:1:R*2
       R_temp=i*R;
       temp=(R_temp==n);
       ecuacion_2=ecuacion_2+(alpha^i)*temp;
end
t_ecuacion_2=0:length(ecuacion_2)-1;
figure
stem(t_ecuacion_2,ecuacion_2);

[x,Fs]=audioread('obama_last_onu.wav');
tiempo_audio=size(x,1)/Fs;% 35.6 segundos

filtro_ecuacion2=filter(ecuacion_2,1,x);
ecuacion2_filtrada=audioplayer(filtro_ecuacion2,Fs);
play(ecuacion2_filtrada,Fs);
subplot(2,1,1)
