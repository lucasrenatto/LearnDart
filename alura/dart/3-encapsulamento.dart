import '2-sintaxe-colecoes-dinamismo.dart';
import '3.2-transporteEnum.dart';

class Viagem {
  static String codigoTrabalho = "123ABC";
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};
  int _totalLocaisVisitados = 0;

  Viagem({required this.locomocao});

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados += 1;
  }

  int get consultarTotalLocaisVisitatos {
    return _totalLocaisVisitados;
  }

  set alterarLocaisVisitados(int qtd) {
    if (qtd > 10)
      throw new FormatException(
          "Não é possível adicionar mais de 10 visitas diarias");

    _totalLocaisVisitados = qtd;
  }
}




// Para criar atributos privados no dart basta usar o underline;
