% funcion para ingresar vector
function vector=insertVector(ndatos)
   vector=zeros(1,ndatos)
    for i = 1:ndatos
        vector(i)=input(['Dato correspondiente ', num2str(i), ' :']);
    end
end