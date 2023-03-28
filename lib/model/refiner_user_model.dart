class RefinerUser {
  String? userId;
  Map<String, String>? userTraits;

  RefinerUser({required this.userId, required this.userTraits});

  Map<String, dynamic> toJson() {
    return {'userId': userId, 'userTraits': userTraits};
  }

  Map<String, String> toWebAppJson() {
    Map<String, String> usr = {};
    userTraits!.forEach((key, value) => usr[key] = value.toString());
    usr['id'] = userId!;

    return usr;
  }
}
