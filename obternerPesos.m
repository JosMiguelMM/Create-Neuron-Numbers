% funcion para llenar una matriz
function matricesPesos=obternerPesos(capas, tamaCapas)
    matricesPesos=cell(1,capas);
    for i=2:capas
        matrizPesos=zeros(tamaCapas(i), tamaCapas(i-1))
        for j = 1:tamaCapas(i-1)
            for k = 1:tamaCapas(i)
                matrizPesos(k,j) = input(['Ingresa los datos para la capa ',num2str(i),' ingrese el peso en la fila: ', num2str(k), ' columna: ', num2str(j) ])
            end
        end
        matricesPesos{i-1}=matrizPesos
    end
end
