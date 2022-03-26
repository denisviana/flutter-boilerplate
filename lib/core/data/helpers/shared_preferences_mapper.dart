enum SharedPreferencesKey {
  userEmail,
  userId,
  userName,
}

extension SharedPreferencesKeyExtension on SharedPreferencesKey {
  String? rawValue() {
    switch (this) {
      case SharedPreferencesKey.userEmail:
        return 'userEmail';
      case SharedPreferencesKey.userId:
        return 'userId';
      case SharedPreferencesKey.userName:
        return 'userName';
      default:
        return null;
    }
  }
}
