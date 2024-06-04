import 'controllers/bank_controller.dart';
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
  bool result = bankController.makeTransfer(
      idSender: "Kako", idReceiver: "Ricarth", amount: 700);

  // Observando resultado
  print(result);
}

// void main() {
//   // double amount = double.parse("25,33");

//   recursiveFunc(1);
// }

// recursiveFunc(int count) {
//   print(count);
//   recursiveFunc(count + 1);
// }
