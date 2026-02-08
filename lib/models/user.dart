class User {
  String name;
  String email;

  User({required this.name, required this.email});

  Map<String, dynamic> toJson() {
    return {'name': name, 'email': email};
  }

  static User fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      email: json['email'],
    );
  }
}

class AuthService {
  User? _currentUser;

  void signIn(String email, String password) {
    // Authentication logic here
    // On success:
    _currentUser = User(name: 'User Name', email: email);
  }

  void signOut() {
    _currentUser = null;
  }

  User? get currentUser => _currentUser;
}