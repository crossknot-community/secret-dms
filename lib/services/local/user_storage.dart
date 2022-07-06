import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:secret_dms/models/user.dart';
import 'package:secret_dms/services/local/base_storage.dart';

class UserStorage implements BaseStorage<AppUser> {
  final FlutterSecureStorage _secureStorage;

  UserStorage(this._secureStorage);

  static const _key = '_app_user_';

  AppUser? _appUser;

  @override
  Future<AppUser?> read() async {
    if (_appUser != null) {
      return _appUser;
    }
    final json = await _secureStorage.read(key: _key);
    if (json == null) {
      return null;
    }
    try {
      return _appUser = AppUser.fromJson(json);
    } on FormatException {
      return null;
    }
  }

  @override
  Future<void> save(AppUser user) async {
    _appUser = user;
    return _secureStorage.write(key: _key, value: user.toJson());
  }

  @override
  Future<void> clear() {
    _appUser = null;
    return _secureStorage.delete(key: _key);
  }
}
