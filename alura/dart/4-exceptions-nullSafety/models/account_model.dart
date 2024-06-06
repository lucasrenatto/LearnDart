class AccountModel {
  String name;
  double balance;
  bool isAuthenticated;

  AccountModel({
    required this.name,
    required this.balance,
    required this.isAuthenticated,
  });

  editBalance({required value}) {
    balance = balance + value;
  }

  @override
  String toString() {
    return "O nome do dono da conta é: $name, o saldo atual é $balance e o usuário${isAuthenticated ? "" : " não"} está autenticado";
  }
}
