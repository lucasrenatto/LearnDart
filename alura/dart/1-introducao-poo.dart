import 'dart:mirrors';

// void main() {
//   String nome = "Laranja";
//   double peso = 100.2;
//   String corFruta = "Verde e Amarela";
//   String sabor = "Doce e cítrica";
//   int diasDesdeColheita = 30;
//   int diasNecessarios = 35;
//   bool isMadura = false;

//   Fruta fruta01 = Fruta(
//     nome: "Goiaba",
//     peso: 250,
//     cor: "Verde",
//     sabor: "Doce",
//     diasDesdeColheita: 40,
//   );

//   print(fruta01.cor);

//   funcDadosDaFruta(
//     diasDesdeColhida: diasDesdeColheita,
//     diasNecessarios: diasNecessarios,
//     nome: nome,
//     peso: peso,
//     corFruta = "Laranja",
//   );

//   // Fruta fruta02 = Fruta.minuscula("teste", "AZUL");
//   // var quantosDias = funcQuantosDiasMadura(diasDesdeColheita);
// //   print(quantosDias);
// // }
// }

void main(List<String> args) {
  Legumes legume = Legumes("Cenoura", 10, 'Laranja', false);
  legume.fazerMassa();
}

class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  //Construtor da classe para criar ela de forma padrão;

  Fruta(
      {required this.nome,
      required this.peso,
      required this.cor,
      required this.sabor,
      required this.diasDesdeColheita});

  // É um método da classe;
  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
  }

  //Case eu queira criar um construtor personalizado:
  // Fruta.minuscula(String nome, String cor) {
  //   this.nome = nome.toLowerCase();
  //   this.cor = cor;
  //   // Outros atributos.
  // }
}

class Alimento implements Bolo {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  printALimento() {
    print("Este $nome pesa $peso gramas e é $cor.");
  }

  @override
  assar() {
    // TODO: implement assar
    throw UnimplementedError();
  }

  @override
  fazerMassa() {
    print("Pegar $nome e misturar com 3 ovos e 300ml de leite");
  }

  @override
  separarIngredientes() {
    // TODO: implement separarIngredientes
    throw UnimplementedError();
  }
}

class Legumes extends Alimento {
  bool isPrecisaCozinhar;

  @override
  fazerMassa() {
    print("Tirar a casca");
    super.fazerMassa();
  }

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  // Super eu pego as caracteristicas do "Pai" que seria Alimento pra definir as propriedades da classe filho na construção.
}

class Citricas {
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;

  Citricas(this.nome, this.peso, this.cor, this.diasDesdeColheita);
}

class Nozes {
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;
  double porcentagemOleoNatural;

  Nozes(
    this.nome,
    this.peso,
    this.cor,
    this.diasDesdeColheita,
    this.porcentagemOleoNatural,
  );
}

// Parametros: 1 e 2 são posicionais obrigatórios;
// Parametro 3 é nomeado opcional;
funcEstaMadura(String nomeDaFruta, int dias,
    {String? cor, int quantidade = 0}) {
  if (dias >= 30) {
    print("A $nomeDaFruta está madura");
  } else {
    print("A $nomeDaFruta não está madura");
  }

  if (cor != null && cor.isNotEmpty) print('A cor da $nomeDaFruta é $cor');
}

funcDadosDaFruta(String? cor,
    {required String nome,
    required int diasDesdeColhida,
    required int diasNecessarios,
    required double peso}) {
  print(
    "A $nome pesa $peso gramas! Ela foi colhida há $diasDesdeColhida dias e precisa de ${funcQuantosDiasMadura(diasDesdeColhida, diasNecessarios)} para amadurecer, logo, a $nome está madura!",
  );
}

int funcQuantosDiasMadura(int dias, int diasNecessariosColheita) {
  int quantosDiasFaltam = diasNecessariosColheita - dias;
  return quantosDiasFaltam;
}

// Função recursiva basicamente trata-se de uma função se referencia a si mesma de forma direta ou indireta, isso causa um estouro de pilha.

class Item {
  String nome;
  String cor;
  double peso;
  double valor;
  String marca;
  Item(this.nome, this.cor, this.peso, this.valor, this.marca);

  informacaoDoItem() {
    print(
        "O item $nome de cor $cor, que pesa $peso gramas, tem o valor de R\$ $valor reais");
  }
}

class Relogio extends Item {
  bool isDigital;
  Relogio(
    this.isDigital,
    String nome,
    String cor,
    double peso,
    double valor,
    String marca,
  ) : super(
          nome,
          cor,
          peso,
          valor,
          marca,
        );

  informacoesRelogio() {
    print(informacaoDoItem());
    print(
        "Com a marca $marca o relógio é ${isDigital ? "Digital" : "Analógico"}");
  }
}

class Alianca extends Item {
  bool isOuro;
  double porcentagemOuro;
  Alianca(
    this.isOuro,
    this.porcentagemOuro,
    String nome,
    String cor,
    double peso,
    double valor,
    String marca,
  ) : super(
          nome,
          cor,
          peso,
          valor,
          marca,
        );
  informacoesAnel() {
    print(informacaoDoItem());
    print(
        "${isOuro ? "" : "Não"} é de ouro ${isOuro ? "em $porcentagemOuro % de cobertura." : ""}");
  }
}

// void main(List<String> args) {
//   Relogio relogioUm = Relogio(true, "Relógio", "Preto", 250, 12500, "Rolex");
//   relogioUm.informacoesRelogio();

//   Alianca alianca =
//       Alianca(true, 75.22, "Aliança", "Dourado", 30, 750, "Vivara");
//   alianca.informacoesAnel();
// }

// Entendendo classes abstratas
// Uma abstraçãoe está mais ligado ao conceito de forma geral do que o objeto em si: você nunca come uma fruta e sim um tipo de fruta, você nunca ve um animal e sim um tipo.
// Quando eu digo o tipo não é exatamente o tipo em si, mas o conceito que formula um animal ou e suas caracteristicas.

abstract class Bolo {
  separarIngredientes();

  fazerMassa();

  assar();
}
