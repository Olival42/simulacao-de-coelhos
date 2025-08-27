void main() {
  int adultos = 0;
  int jovens = 2;
  int mes = 1;

  print("Simulação:");

  while (adultos + jovens > 0) {
    int novosAdultos = jovens;
    adultos += novosAdultos;
    jovens = adultos;
    int total = adultos + jovens;

    if (mes > 12) {
      total = (total * 0.25).toInt();

      if (total == 1) {
        total = 0;
        jovens = 0;
        adultos = 0;
      } else {
        jovens = (total / 2).toInt();
        adultos = (total / 2).toInt();
      }
    }

    print(
      "Fim do Mês: $mes. População de coelhos: $total. Jovens: $jovens. Adultos: $adultos",
    );

    mes++;

    if (total == 0) {
      print("Todos os coelhos foram predados.");
      break;
    }
  }
}
