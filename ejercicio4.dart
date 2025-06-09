void main() {
  
  final libro1 = Libro(titulo: "Cien años de soledad", autor: "Gabriel García Márquez", anioPublicacion: 1967);
  final libro2 = Libro(titulo: "El Señor de los Anillos", autor: "J.R.R. Tolkien", anioPublicacion: 1954);
  final libro3 = Libro(titulo: "1984", autor: "George Orwell", anioPublicacion: 1949);
  final libro4 = Libro(titulo: "Orgullo y Prejuicio", autor: "Jane Austen", anioPublicacion: 1813);
  final libro5 = Libro(titulo: "Harry Potter y la piedra filosofal", autor: "J.K. Rowling", anioPublicacion: 1997);
  final libro6 = Libro(titulo: "Crimen y castigo", autor: "Fiódor Dostoyevski", anioPublicacion: 1866);
  final libro7 = Libro(titulo: "Guerra y Paz", autor: "Leo Tolstoy", anioPublicacion: 1869);

  final List<Libro> inventario = [libro1, libro2, libro3, libro4, libro5];

  final bibliotecaPrincipal = Biblioteca(inventario: inventario);

  print("------------------Biblioteca recien construida------------------");
  bibliotecaPrincipal.imprimirInventario();

  bibliotecaPrincipal.agregarLibro(libro6);
  bibliotecaPrincipal.agregarLibro(libro7);

  print("------------------Biblioteca despues de agregar------------------");
  bibliotecaPrincipal.imprimirInventario();

  bibliotecaPrincipal.eliminarLibro(libro2);
  bibliotecaPrincipal.eliminarLibro(libro4);

  print("------------------Biblioteca despues de eliminar------------------");
  bibliotecaPrincipal.imprimirInventario();

  print("------------------Buscar Libro Por Autor------------------");
  bibliotecaPrincipal.buscarLibroPorAutor("George Orwell");

  print("------------------Lista de Libros Ordenados por Anio de Publicacion------------------");
  bibliotecaPrincipal.listarLibrosPorAnio();
}

class Libro {
  final String titulo;
  final String autor;
  final int anioPublicacion;

  //Constructor
  Libro({required this.titulo,required this.autor,required this.anioPublicacion});
}

class Biblioteca {
  final List<Libro> inventario;

  //Constructor
  Biblioteca({required this.inventario});

  void imprimirInventario() {
  for (final libro in inventario){
    print('Título: ${libro.titulo}, Autor: ${libro.autor}, Año: ${libro.anioPublicacion}');
  }
}

  void agregarLibro (Libro libroaAgregar){
    this.inventario.add(libroaAgregar);
  }

  void eliminarLibro (Libro libroaEliminar){
    inventario.remove(libroaEliminar);
  }

  void buscarLibroPorAutor (String autor){
    for (final libro in inventario){
      if(libro.autor == autor){
        print('Título: ${libro.titulo}, Autor: ${libro.autor}, Año: ${libro.anioPublicacion}');
      }
    }
  }

  void listarLibrosPorAnio (){
    int aniomenor = inventario[0].anioPublicacion;
    int aniomayor = inventario[0].anioPublicacion;

    for(final libro in inventario){
      if(libro.anioPublicacion < aniomenor)
        aniomenor = libro.anioPublicacion;

      if(libro.anioPublicacion > aniomayor)
        aniomayor = libro.anioPublicacion;
    }

    for(int i = aniomenor; i <= aniomayor; i++){
      for(final libro in inventario){
        if(libro.anioPublicacion==i)
          print('Título: ${libro.titulo}, Autor: ${libro.autor}, Año: ${libro.anioPublicacion}');
      }
    }

  }

}