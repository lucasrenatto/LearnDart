class SendIdInvalidException implements Exception {
  static const String report = "SendIdInvalidException";
  String idSender;
  SendIdInvalidException({required this.idSender});
  @override
  String toString() {
    return "$report | Conta origem de id $idSender inválida.";
  }
}

class ReceiverIdInvalidException implements Exception {
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});
  @override
  String toString() {
    return "Conta destino de id $idReceiver inválida.";
  }
}

class SenderNotAuthenticated implements Exception {
  @override
  String toString() {
    return "Conta origem não autenticada";
  }
}

class SenderBalanceLowerThanAmountException implements Exception {
  static const String report = "SenderBalanceLowerThanAmountException";
  double amoutBalance;
  double amountSend;

  SenderBalanceLowerThanAmountException(
      {required this.amoutBalance, required this.amountSend});

  @override
  String toString() {
    return "$report | Não é possível enviar o valor, sua conta não tem o saldo!, R\$$amountRequired faltante!";
  }

  double get amountRequired {
    return amountSend - amoutBalance;
  }
}
