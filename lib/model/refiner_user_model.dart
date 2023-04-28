class RefinerUser {
  const RefinerUser({
    required this.userId,
    required this.userTraits,
  });

  final String? userId;
  final Map<String, String>? userTraits;

  Map<String, dynamic> toJson() => {'userId': userId, 'userTraits': userTraits};

  Map<String, String> toWebAppJson() {
    final usr = <String, String>{};

    userTraits!.forEach((key, value) => usr[key] = value.toString());
    usr['id'] = userId!;

    return usr;
  }
}
