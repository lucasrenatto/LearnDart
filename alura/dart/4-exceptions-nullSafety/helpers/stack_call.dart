void stackStart() {
  functionOne();
}

void functionOne() {
  assert(null != null);
  print("Started F01");
  try {
    functionTwo();
  } on LucasException catch (e, stackTrace) {
    print("Foi capturada dentro da FunctionOne");
    print(e.toString());
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
  final String tipoDeChefe = "BOSS";
}
