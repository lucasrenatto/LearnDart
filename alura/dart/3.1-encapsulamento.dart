import '3-encapsulamento.dart';
import '3.2-transporteEnum.dart';

void main(List<String> args) {
  Viagem viagem = Viagem(locomocao: Transporte.aviao);

  print(viagem.consultarTotalLocaisVisitatos);

  viagem.visitar("Museu");

  print(viagem.consultarTotalLocaisVisitatos);

  viagem.alterarLocaisVisitados = 150;

  print(viagem.consultarTotalLocaisVisitatos);
}
