class IMC {
  double altura = 0;
  double peso = 0;
  double imc = 0;
  String res = '';

  double calculo() {
    imc = peso / (altura * altura);
    return imc;
  }

  String classifica() {
    if (imc < 18.6) {
      res = 'Abaixo do Peso';
    } else if (imc >= 18.6 && imc < 24.9) {
      res = 'Peso Ideal';
    } else if (imc >= 24.9 && imc < 29.9) {
      res = 'Levemente Acima do Peso';
    } else if (imc >= 29.9 && imc < 34.9) {
      res = 'Obesidade Grau I';
    } else if (imc >= 34.9 && imc < 39.9) {
      res = 'Obesidade Grau II';
    } else if (imc >= 40) {
      res = 'Obesidade Grau III';
    }
    return res;
  }
}
