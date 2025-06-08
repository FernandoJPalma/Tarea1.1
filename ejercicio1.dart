void main() {
  int count = 15;
  List<int> fibonacci = [];

  for (int i = 0; i < count; i++) {
    if (i == 0) {
      fibonacci.add(0);
    } else if (i == 1) {
      fibonacci.add(1);
    } else {
      fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
    }
  }

  print('Los primeros $count números de la sucesión de Fibonacci:');
  print(fibonacci);
}
