class User {
  final String userName;
  final String email;
  final String password; // Added password field
  final String phone;
  final String address;
  final int age;

  User({
    required this.userName,
    required this.email,
    required this.password, // Added password parameter
    required this.phone,
    required this.address,
    required this.age,
  });

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'email': email,
      'password': password, // Added password field
      'phone': phone,
      'address': address,
      'age': age,
    };
  }
}