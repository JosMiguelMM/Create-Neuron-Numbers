 % limpia a la terminal y la memoria 
clear, clc,close all                 
disp("Hola, este programa da un ejemplo de redes neuronales")  

% se ingresa cuantos datos va a recibir la neurona
datos=input("Ingrese el numero de vectores a ingresar: " );

% numero de capas que se ingresan 
capas=input("Ingrese el número de capas: ");                    

% se define un vector con tamaño definido 
vector=zeros(1, datos);

%se usa una celda 
matrizPesos=cell(1, capas-1);

tamaCapas=[];
for i=1:capas
    tamaCapas(i) = input(['Ingrese el tamaño de la capa: ', num2str(i), ' : ']);  
end

matrizPesos=obternerPesos(capas,tamaCapas)

vector = insertVector(datos)
resultado=[];
matrizPeso=[];
for i=1:(length(matrizPesos)-1)
    matrizPeso=matrizPesos{1,i}
    disp("I es ")
    disp(i)
    if i==1
        disp(size(matrizPeso,1))
        disp(length(vector))

        if size(matrizPeso,1)==length(vector)
            resultado=matrizPeso*vector;
        else
            resultado=matrizPeso*vector';
        end
    else
        disp("Tamaños")
        disp(size(matrizPeso,1))

        disp(size(resultado,2))
        
        resultado=matrizPeso*resultado
    end
end

disp(resultado)




