import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secret_dms/models/failure.dart';

part 'app_link_states.freezed.dart';

@freezed
abstract class AppLinkStates with _$AppLinkStates {
  const factory AppLinkStates.initial() = _Initial;
  const factory AppLinkStates.linkDetected(Uri link) = _AppLinkDetected;
  const factory AppLinkStates.error(Failure failure) = _ErrorDetected;
}
