class CuentaBancaria {
  String titular;
  double saldo;

  CuentaBancaria(this.titular, [this.saldo = 0]);

  void depositar(double cantidad) {
    if (cantidad > 0) {
      saldo += cantidad;
      print('Depósito exitoso de Lps $cantidad. Saldo actual: Lps $saldo');
    } else {
      print('El monto a depositar no debe ser menor que 0.');
    }
  }

  void retirar(double cantidad) {
    if (cantidad <= 0) {
      print('El monto a retirar debe ser mayor a cero.');
    } else if (cantidad > saldo) {
      print('Fondos insuficientes. Saldo actual: Lps $saldo');
    } else {
      saldo -= cantidad;
      print('Retiro exitoso de Lps $cantidad. Saldo actual: Lps $saldo');
    }
  }

  // Método para consultar el saldo
  void consultarSaldo() {
    print('Saldo de $titular: L$saldo');
  }
}

void main() {

  CuentaBancaria cuentaFer = CuentaBancaria('Fernando');

  cuentaFer.consultarSaldo();

  cuentaFer.depositar(1500);

  cuentaFer.retirar(2000);

  cuentaFer.retirar(500);

  cuentaFer.consultarSaldo();
}
