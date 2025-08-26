void main() {
  int adultos = 2;
  int jovens = 0;

  print("Simulação sem predador:");

  for (var i = 1; i <= 12; i++) {
    int novosAdultos = jovens;
    adultos += novosAdultos;
    jovens = adultos;
    int total = adultos + jovens;

    print("Fim do Mês: $i. População de coelhos: $total. Jovens: $jovens. Adultos: $adultos");
  }

  print("\nSimulação com predador:");

  int mes = 1;
  while (jovens + adultos > 0) {
    int total = jovens + adultos;

    total = (total * 0.25).toInt();
    jovens = (total / 2).toInt();
    adultos = (total / 2).toInt();

    print("Fim do Mês: $mes. População de coelhos: $total. Jovens: $jovens. Adultos: $adultos");

    mes++;

    if (total == 0) {
      print("Todos os coelhoes foram predados.");
      break;
    }
  }
}
