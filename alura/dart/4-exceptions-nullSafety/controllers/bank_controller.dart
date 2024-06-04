import '../models/account_model.dart';

class BankController {
  final Map<String, AccountModel> _database = {};

  addAccount({required String id, required AccountModel account}) {
    _database[id] = account;
  }

  bool makeTransfer(
      {required String idSender,
      required String idReceiver,
      required double amount}) {
    if (!verifyId(idSender)) {
      return false;
    }

    if (!verifyId(idReceiver)) {
      return false;
    }

    AccountModel accountSender = _database[idSender]!;
    AccountModel accountReceiver = _database[idReceiver]!;

    if (!accountSender.isAuthenticated) {
      return false;
    }

    // Verifica se o remetente possui saldo.
    if (accountSender.balance < amount) {
      return false;
    }

    accountSender.balance -= amount;
    accountReceiver.balance += amount;

    return true;
  }

  bool verifyId(String id) {
    return _database.containsKey(id);
  }
}
