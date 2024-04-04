function tiempos=ecuCrecimiPobla(tiempo)
    tiempos=[];
    no=input("Ingrese poblacion inicial")
    tiempos=(no)./(0.051+((185./no)-0.051).*exp(-0.55.*tiempo))
end