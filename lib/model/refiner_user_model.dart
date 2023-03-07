class RefinerUser {
  String? userId;
  Map<String, String>? userTraits;

  RefinerUser({required this.userId, required this.userTraits});

  Map<String, dynamic> toJson() {
    return {'userId': userId, 'userTraits': userTraits};
  }
}
