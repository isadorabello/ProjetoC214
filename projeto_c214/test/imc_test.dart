import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_c214/controller/imc.dart';

void main() {
  double alt = 173;
  double pes = 75.00;

  test('Calcula o IMC', () {
    IMC imc = IMC();
    imc.altura = alt;
    imc.peso = pes;
    double res = imc.calculo();

    expect(res, pes / (alt * alt));
  });

  test('Classifica o IMC -> Levemente Acima do Peso', () {
    IMC imc = IMC();
    imc.imc = 25.5;
    String aux = imc.classifica();

    expect(aux, 'Levemente Acima do Peso');
  });
}
