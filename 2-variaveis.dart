void main() {
  //Existem vários tipos de variáveis:
  String nome = 'João da Silva'; // o Objeto é do tipo string

  // como nome já foi atribuido a um valor String não podemos alterar seu valor para um outro tipo de objeto:
  nome = 2; // há erro.

  // caso a gente queira uma valor mais flexivel podemos usar um Object como variavel ou Dynamic:
  dynamic nomeDois = 'Lucas da Silva';
  nomeDois = 2;
  // ou...
  Object nomeTres = 'Fábio Castro';
  nomeTres = 2;
}
