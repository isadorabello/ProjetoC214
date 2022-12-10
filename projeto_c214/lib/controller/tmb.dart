class TMB {
  double altura = 0;
  double peso = 0;
  double taxa = 0;
  int idade = 0;
  double tmb = 0;
  int atv = 0;

  int calculoMulher() {
    tmb = taxa * (655 + ((9.6 * peso) + (1.8 * altura) - (4.7 * idade)));
    return tmb.round();
  }

  int calculoHomem() {
    tmb = taxa * (66 + ((13.7 * peso) + (5 * altura) - (6.8 * idade)));
    return tmb.round();
  }

  double classificar() {
    if (atv == 0) {
      //sedentário
      taxa = 1.2;
    } else if (atv == 1) {
      //levemente ativo
      taxa = 1.375;
    } else if (atv == 2) {
      //moderadamente ativo
      taxa = 1.55;
    } else if (atv == 3) {
      //altamente ativo
      taxa = 1.725;
    } else {
      //extremamente ativo
      taxa = 1.9;
    }

    return taxa;
  }
}
