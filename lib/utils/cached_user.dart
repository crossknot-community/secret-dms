import 'package:secret_dms/models/user.dart';

class CachedUserManager {
  AppUser? _appUser;
  AppUser? get appUser => _appUser;
  void cacheUser(AppUser appUser) {
    _appUser = appUser;
  }

  void clearCache() => _appUser = null;
}
