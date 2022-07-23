import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:fpdart/fpdart.dart';
import 'package:secret_dms/models/failure.dart';

class AppLinkService {
  AppLinkService(this._appLinks);

  final AppLinks _appLinks;

  Future<Either<Uri, Failure>> getInitialLink() async {
    final initialLinkUri = await _appLinks.getInitialAppLink();
    if (initialLinkUri != null) {
      return left(initialLinkUri);
    }
    return right(Failure('Oops! It seems, you tapped on a wrong link'));
  }

  Stream<Uri> getLinkStream() => _appLinks.uriLinkStream;
}
