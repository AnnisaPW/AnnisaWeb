part of '_index.dart';

class AuthFb {
  final User? user;
  AuthFb({
    this.user,
  });

  AuthFb copyWith({
    User? user,
  }) {
    return AuthFb(
      user: user,
    );
  }

  @override
  String toString() => 'AuthFb(user: $user)';
}
