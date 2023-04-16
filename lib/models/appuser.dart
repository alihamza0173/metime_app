class AppUser {
  final String firstName;
  final String lastName;
  final String email;
  final String? role;

  AppUser({
    required this.firstName,
    required this.lastName,
    required this.email,
    this.role = 'user',
  });

  factory AppUser.fromMap(Map<String, dynamic> data) {
    return AppUser(
      firstName: data['firstName'],
      lastName: data['lastName'],
      email: data['email'],
      role: data['role'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'role': role,
    };
  }
}
