class User {
  String Name;
  String email;
  String password;
  String uuid;
  String role;
  double address;
  String phone;
  String shopname;


  User();

  User.fromMap(Map<String, dynamic> data) {
    Name = data['name'];
    email = data['email'];
    password = data['password'];
    uuid = data['uuid'];
    role = data['role'];
    address = data['balance'];
    phone = data['phone'];
    shopname = data['shopname'];
  }

  Map<String, dynamic> toMap() {
    return {
      'displayName': Name,
      'email': email,
      'password': password,
      'uuid': uuid,
      'role': role,
      'address': address,
      'phone': phone,
      'shopname': shopname
    };
  }
}