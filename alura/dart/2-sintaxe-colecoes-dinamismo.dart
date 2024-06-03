// O que é sintaxe?
// R: Conjunto de normas que coordenam e estruturam a construção das variáveis, funções, classes e etc...

import '3.2-transporteEnum.dart';

void main(List<String> args) {
  escolherMeioTransporte(Transporte.andando);
  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  registrosVisitados = registrarDestinos("Recife", registrosVisitados);
  registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  print(registrosVisitados);

  // Maps:
  Map<String, dynamic> registrarPrecos = {};
  registrarPrecos["São Paulo"] = 1200;
  registrarPrecos["Rio de Janeiro"] = 1000;
  print(registrarPrecos["São Paulo"]);

  // Diferença do Var e do Dynamic: O var espera um valor predefinido em tempo de compilação, onde o tipo não pode mudar após sua declaração:
  var variavelDoTipoDouble = 4.0;
  // Se eu tentar: variavelDoTipoDouble = "Teste" vai resultar em um erro pois a variavel já foi predefinida pelo o compilador como um double.
  // Para resolver esse problema podemos usar dynamic que como o próprio nome diz deixa a "variavel" mais dinamica para se alterar em tempo de execução:
  dynamic variavelDinamica = 4.0;
  variavelDinamica = "Agora sou string";
  variavelDinamica = 2;
  // Tanto var quanto dynamic não requerem inicialização:
  dynamic variavelDinamicaDois;

  // Entendendo uma classe com atributos estaticos/
  Viagem viagemHoje = Viagem();
  Viagem.key;

  // Serve para definir atributos que não mudam e que tenham um valor unico para que eu possa acessar em qualquer parte do meu código sem precisar estanciar a classe.
}

class Viagem {
  static String key = "123456asdsdsad@@@###!XCDasA25125";
}

Set<String> registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}

escolherMeioTransporte(Transporte transporte) {
  if (transporte == Transporte.carro) {
    print("Vou de CARRO para aventura");
  } else if (transporte == Transporte.bike) {
    print("Vou de BIKE para aventura");
  } else {
    print("Vou para aventura");
  }
}


// A principal diferença de List e Set é que List aceita números ordenados, possibilita a repetição de dados e pode-se acessar por indices;
// Já o Set não aceita ordenação definida, não possibilida a repetição de dados e não aceita indices.

// Interable é a interface que define as propriedades e os comportamentos de listas e sets