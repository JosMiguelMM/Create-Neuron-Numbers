 % limpia a la terminal y la memoria 
clear, clc,close all                 
disp("Hola, este programa da un ejemplo de redes neuronales")  

% se ingresa cuantos datos va a recibir la neurona
datos=input("Ingrese el numero de vectores a ingresar: " );

% numero de capas que se ingresan 
capas=input("Ingrese el número de capas: ");                    

% se define un vector con tamaño definido 
vector=zeros(1, datos);                   
tamaCapas=[];
for i=1:capas
    tamaCapas(i) = input(['Ingrese el tamaño de la capa: ', num2str(i), ' : ']);  
end

matriz=obternerPesos(tamaCapas(2),tamaCapas(1))
vector =insertDatos(datos)



