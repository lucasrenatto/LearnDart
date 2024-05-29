// Final e Consts são variaveis que não podem ter os seus valores reatribuidos após a primeira definição.
// Oque diferencia é que CONST é executada em tempo de complicação, ou seja a variável tem que ter um valor implicido antes de ser feita a execução.
// Já um final pode ter seu valor atribuido em tempo  de execução.
void main() {
//Ambos não podem ter seu valor reatribuido.
  final String nome = "Lucas";
  const String cidade = "São Paulo";

//Porém um const não pode receber um valor externo que o compilador ainda não conhece:
 // const String nomeFuncao = _retornaNome();
// Para corrigir isso devo inserir o valor diretamente para que o compilador já conheça antes mesmo de sua execução:
  const String nomeDefinido = "Teste";

//Já o final consegue lidar tanto com um valor ainda não conhecido pelo o compilador:
  final String nomeFinal = _retornaNome();
// Quanto um valor inserido antes da execução:
  final String nomeFinalDefinido = "João";
}

String _retornaNome() => "Lucas";
