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
vactor=[]
for i=1:capas
    tamaCapas(i) = input(['Ingrese el tamaño de la capa: ', num2str(i), ' : ']);  
end


disp("Digite la opcion ")
disp("1-> Quiere usar la funcion comportamiento de crecimiento de una especie ")
disp("2-> Quiere insertar los datos manuelamente")

option=input("Ingrese la opcion escogida")
switch option
    case 1
        vector=insertVector(tamaCapas(1))
        vector=ecuCrecimiPobla(vector)
        matrizPesos=obternerPesos(capas,tamaCapas)
    case 2
        vector = insertVector(datos)
        matrizPesos=obternerPesos(capas,tamaCapas)
end




te =insertVector(capas-1)
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
            resultado=matrizPeso*vector+te(i)
        else
            resultado=matrizPeso*vector'+te(i)
        end
    else
        disp("Tamaños")
        disp(size(matrizPeso,1))

        disp(size(resultado,2))
        
        resultado=matrizPeso*resultado+te(i)
    end
end







