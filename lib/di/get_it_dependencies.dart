import 'package:appwrite/appwrite.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:secret_dms/constants/secrets.dart';
import 'package:secret_dms/models/user.dart';
import 'package:secret_dms/services/auth_service.dart';
import 'package:secret_dms/services/local/base_storage.dart';
import 'package:secret_dms/services/local/user_storage.dart';
import 'package:secret_dms/utils/cached_user.dart';

final GetIt getIt = GetIt.instance;
void setupDependencies() {
  getIt.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());
  getIt.registerSingleton<Client>(
    Client(endPoint: AppSecrets.apiEndPoint)..setProject(AppSecrets.projectId),
  );
  getIt.registerSingleton<Database>(Database(client));
  getIt.registerSingleton<Account>(Account(client));
  getIt.registerSingleton<BaseStorage<AppUser>>(
      UserStorage(flutterSecureStorage));
  getIt.registerSingleton<BaseAuthService>(AuthService(
      account: account, database: database, userStorage: userStorage));
  getIt.registerSingleton<CachedUserManager>(CachedUserManager());
}

final flutterSecureStorage = getIt.get<FlutterSecureStorage>();
final client = getIt.get<Client>();
final database = getIt.get<Database>();
final account = getIt.get<Account>();
final userStorage = getIt.get<BaseStorage<AppUser>>();
final authService = getIt.get<BaseAuthService>();
final cachedUserManager = getIt.get<CachedUserManager>();
final appUser = cachedUserManager.appUser;
