% funcion para llenar una matriz
function pesos=obternerPesos(filas, columna)
    pesos=zeros(filas, columna)
    for i = 1:columna
        for j = 1:filas
            peso = input(['Ingrese el peso en la fila: ', num2str(i), ' columna: ', num2str(j) ])
            pesos(j, i)=peso
        end
    end
end
