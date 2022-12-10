import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_c214/controller/tmb.dart';

void main() {
  double alt = 173;
  double pes = 75.00;
  int ida = 21;
  double tax = 1.2;

  test('Calcula o TMB de uma mulher', () {
    TMB tmb = TMB();
    tmb.altura = alt;
    tmb.peso = pes;
    tmb.idade = ida;
    tmb.taxa = tax;
    int res = tmb.calculoMulher();

    expect(res, 1905);
  });

  test('Calcula o TMB de um homem', () {
    TMB tmb = TMB();
    tmb.altura = alt;
    tmb.peso = pes;
    tmb.idade = ida;
    tmb.taxa = tax;
    int res = tmb.calculoHomem();

    expect(res, 2179);
  });

  test('Verifica a classificação da taxa -> Levemente Ativo', () {
    TMB tmb = TMB();
    tmb.atv = 1;
    double aux = tmb.classificar();

    expect(aux, 1.375);
  });
}
