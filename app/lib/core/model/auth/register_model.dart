class RegisterModel {
  String name;
  String email;
  String phone;
  String cpf;
  String address;
  String income;
  String password;

  RegisterModel(
      {required this.name,
      required this.email,
      required this.phone,
      required this.cpf,
      required this.address,
      required this.income,
      required this.password});

  Map<String, String> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'cpf': cpf,
      'address': address,
      'income': income,
      'password': password,
    };
  }
}
