void main(){
  
  //Lista de Prueba a analizar
  List<int> lista1 = [1, 2, 3, 2, 4, 1, 5, 6, 6, 8];

  List<int> elementosNoRepetidos = [];

  for(int i1=0; i1 < lista1.length; i1++ ){
    int contador = 0;
    
    for(int i2=0; i2 < lista1.length; i2++){
      if(lista1[i1] == lista1[i2])
        contador++;
    }

    if(contador == 1)
      elementosNoRepetidos.add(lista1[i1]);

  }

  if(elementosNoRepetidos.isEmpty)  
    print("La lista no contaba con elementos unicos");
  else
    print(elementosNoRepetidos);

}

