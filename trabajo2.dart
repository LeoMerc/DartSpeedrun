import 'dart:io';
import 'dart:core';

void main() {
  double val1 = 0, val2 = 0, res = 0;
  List<double> lista = [2.8, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0];
  String op, lector;
  stdout.write("Ingrese el primer valor: ");
  lector = stdin.readLineSync() as String;
  val1 = double.parse(lector);
  stdout.write("Ingrese el segundo valor: ");
  lector = stdin.readLineSync() as String;
  val2 = double.parse(lector);
  stdout.write("Ingrese la operacion: ");
  lector = stdin.readLineSync() as String;
  op = lector;

  switch (op) {
    case "+":
      res = val1 + val2;
      break;
    case "-":
      res = val1 - val2;
      break;
    case "*":
      res = val1 * val2;
      break;
    case "/":
      res = val1 / val2;
      break;
    case "%":
      res = val1 % val2;
      break;
    case "!":
      res = factorial(val1);
      break;
    case "E":
      res = sumatoria(lista);
      break;
    case "P":
      res = producto(lista);
      break;
    default:
      stdout.write("Operacion no valida");
      break;
  }
  print("El resultado es $res");
}

double factorial(double val1) {
  double res = 1;
  for (val1; 0 < val1; val1--) {
    res *= val1;
  }
  return res;
}

double sumatoria(List lista) {
  double res = 0;
  for (int i = 0; i < lista.length; i++) {
    res += lista[i];
  }
  return res;
}
double producto(List lista) {
  double res = 1;
  for (int i = 0; i < lista.length; i++) {
    res *= lista[i];
  }
  return res;
}
