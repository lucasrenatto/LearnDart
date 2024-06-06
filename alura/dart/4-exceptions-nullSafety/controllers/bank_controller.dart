import '../exceptions/bank_controller_exceptions.dart';
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
      throw SendIdInvalidException(idSender: idSender);
    }

    if (!verifyId(idReceiver)) {
      throw ReceiverIdInvalidException(idReceiver: idReceiver);
    }

    AccountModel accountSender = _database[idSender]!;
    AccountModel accountReceiver = _database[idReceiver]!;

    if (!accountSender.isAuthenticated) {
      throw SenderNotAuthenticated();
    }

    // Verifica se o remetente possui saldo.
    if (accountSender.balance < amount) {
      throw SenderBalanceLowerThanAmountException(
          amoutBalance: accountSender.balance, amountSend: amount);
    }

    accountSender.balance -= amount;
    accountReceiver.balance += amount;

    return true;
  }

  bool verifyId(String id) {
    return _database.containsKey(id);
  }
}
