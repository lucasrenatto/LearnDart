// O que é sintaxe?
// R: Conjunto de normas que coordenam e estruturam a construção das variáveis, funções, classes e etc...

void main(List<String> args) {
  escolherMeioTransporte(0);
  escolherMeioTransporteEnum(Transporte.andando);
  escolherMeioTransporteEnumSwitch(Transporte.carro);
}

escolherMeioTransporte(int locomacao) {
  if (locomacao == 0)
    print("Vou de CARRO para aventura");
  else if (locomacao == 1)
    print("Vou de BIKE para aventura");
  else {
    print("Vou de aventura");
  }
}

escolherMeioTransporteEnum(Transporte transporte) {
  if (transporte == Transporte.carro) {
    print("Vou de CARRO para aventura");
  } else if (transporte == Transporte.bike) {
    print("Vou de BIKE para aventura");
  } else {
    print("Vou para aventura");
  }
}

escolherMeioTransporteEnumSwitch(Transporte transporte) {
  switch (transporte) {
    case Transporte.carro:
      print("Vou de CARRO para aventura");
      break;
    case Transporte.bike:
      print("Vou de BIKE para aventura");
      break;
    default:
      print("Vou para aventura");
      break;
  }
}

enum Transporte { carro, bike, andando, skate, aviao, patins, trem }
