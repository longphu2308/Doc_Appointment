class UserModel {
  final String? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? avatar;
  final bool isLoggedIn;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.avatar,
    this.isLoggedIn = false,
  });

  factory UserModel.guest() {
    return UserModel(isLoggedIn: false);
  }
}
