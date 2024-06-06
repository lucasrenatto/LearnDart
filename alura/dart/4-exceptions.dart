import '4-exceptions-nullSafety/models/account_model.dart';

void main(List<String> args) {
  print(AccountModel(
      name: "Lucas Renatto", balance: 2500.00, isAuthenticated: false));
  functionOne();
}

void functionOne() {
  print("Started F01");
  try {
    if (1 != 2) throw LucasException(tipoDeChefe: "O chef não é válido");
    functionTwo();
  } on LucasException catch (e, stackTrace) {
    print("Foi capturada dentro da FunctionOne");
    print(e.tipoDeChefe);
    print(stackTrace.toString().trim());
  }
  print("F01 Finished!");
}

void functionTwo() {
  print("Started F02");
  for (int x = 0; x < 5; x++) {
    print(x);
    int.parse("123Xa");
  }
  print("F02 Finished!");
}

class LucasException implements Exception {
  final String tipoDeChefe;

  LucasException({required this.tipoDeChefe});
}
