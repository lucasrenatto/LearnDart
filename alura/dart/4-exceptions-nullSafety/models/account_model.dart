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
}
