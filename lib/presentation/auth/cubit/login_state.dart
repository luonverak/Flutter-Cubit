class LoginState {
  final String url;
  final String username;
  final String password;
  late bool check;
  LoginState(
      {this.url = '',
      this.username = '',
      this.password = '',
      this.check = true});

  LoginState copyWith(
      {String? url, String? username, String? password, bool? check}) {
    return LoginState(
        url: url ?? this.url,
        username: username ?? this.username,
        password: password ?? this.password,
        check: check ?? this.check);
  }
}
