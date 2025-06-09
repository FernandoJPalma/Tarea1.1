class Empleado {
  String nombre;
  String puesto;
  double salario;

  Empleado(this.nombre, this.puesto, this.salario);
}

double calcularSalarioTotal(List<Empleado> empleados) {
  double total = 0;
  for (var e in empleados) {
    total += e.salario;
  }
  return total;
}

double calcularSalarioPromedio(List<Empleado> empleados) {
  if (empleados.isEmpty) return 0;
  return calcularSalarioTotal(empleados) / empleados.length;
}

void main() {
  
  List<Empleado> empleados = [
    Empleado('Fernando', 'Desarrollador Junior', 1700),
    Empleado('Mario', 'Desarrollador Junior', 16000),
    Empleado('Juan', 'Catedratico', 23000),
  ];

  double total = calcularSalarioTotal(empleados);
  double promedio = calcularSalarioPromedio(empleados);

  print('\nSalario total: \Lps ${total}');
  print('Salario promedio: \Lps ${promedio.toStringAsFixed(2)}');
}
