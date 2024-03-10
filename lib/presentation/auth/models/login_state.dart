class LoginState {
  final String url;
  final String username;
  final String password;

  LoginState({
    this.url = '',
    this.username = '',
    this.password = '',
  });

  LoginState copyWith({
    String? url,
    String? username,
    String? password,
  }) {
    return LoginState(
      url: url ?? this.url,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }
}
