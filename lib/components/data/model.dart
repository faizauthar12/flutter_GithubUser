class User {
  String avatar, login;
  User(this.avatar, this.login);

  static List<User> mapJSONStringToList(List<dynamic> jsonList) {
    return jsonList
        .map((r) => User(
              r['avatar'],
              r['login'],
            ))
        .toList();
  }
}
