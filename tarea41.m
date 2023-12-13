t= -0.04:0.001:0.04;%Definimos la variable t para el rango de tiempo
x=20*exp(j*(80*pi*t-0.4*pi));%Definimos la variable x para definir la funcion
figure;
subplot (2,1,1);
plot3(t, real(x), imag(x)); grid%Usamos la instruccion plot3 para graficar en 3 dimensiones
title('20*e^{j*(80\pit-0.4\pi)}')%Instruccion para el titulo de la grafica
xlabel('Tiempo, s'); ylabel('Real'); zlabel('Imag')%Instrucciones para nombre de ejes
subplot (2,1,2);
plot(t, real(x), 'b'); hold on%Grafica la funcion con sus valores reales
plot(t, imag(x), 'r'); grid%Grafica la funcion con sus valores imaginarios
title('Rojo - Componente Imaginario, Azul - Componente Real de la Exponencial')%Instruccion para el titulo de la grafica
xlabel('Tiempo');ylabel('Amplitud')%Instrucciones para nombre de ejes
