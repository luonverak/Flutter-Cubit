class CheckAppState {
  late bool checkPassword;
  late bool checkRemember;
  CheckAppState({
    this.checkRemember = true,
    this.checkPassword = true,
  });
  CheckAppState copyWith({bool? checkPassword, bool? checkRemember}) =>
      CheckAppState(
        checkPassword: checkPassword ?? this.checkPassword,
        checkRemember: checkRemember ?? this.checkRemember,
      );
}
