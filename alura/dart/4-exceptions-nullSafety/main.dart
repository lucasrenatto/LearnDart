import 'dart:developer';

import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account_model.dart';

void main(List<String> args) {
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account: AccountModel(
          name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account: AccountModel(
          name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência

  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 80000);
    print(result);
  } on SenderBalanceLowerThanAmountException catch (e, stackTrace) {
    log(e.toString(), stackTrace: stackTrace);
    print(e.amountRequired);
    print(e.amountSend);
    print(e);
  } on SenderNotAuthenticated catch (e) {
    print(e);
  } on ReceiverIdInvalidException catch (e) {
    print(e);
  } on SendIdInvalidException catch (e) {
    print(e);
    log("teste");
  }

  // Observando resultado
}

// void main() {
//   // double amount = double.parse("25,33");

//   recursiveFunc(1);
// }

// recursiveFunc(int count) {
//   print(count);
//   recursiveFunc(count + 1);
// }
