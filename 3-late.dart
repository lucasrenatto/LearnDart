// Variaveis do tipo late permitem que uma variável seja inicialmente nula, mas quando utilizada ela deixa de ser.
// e caso uma variavel do tipo late não esteja sendo usada, ela não é incluida no fluxo de execução.

void main() {
  // Vai ser usada
  late double valor = _valorTotal();
  valor.toDouble();
  // fim

  //Não vai ser usada
  late double valorois = _valorTotal();
  // Fim

  print('Seguiu o fluxo');
}

double _valorTotal() {
  print('Chamou o valor total');
  return 0.1;
}
