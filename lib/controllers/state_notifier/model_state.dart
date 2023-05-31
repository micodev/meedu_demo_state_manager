import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_state.freezed.dart';

@freezed
class ModelState with _$ModelState {
  const factory ModelState.init() = InitState;
  const factory ModelState.success({String? data}) = HasData;
  const factory ModelState.loading() = Loading;
  const factory ModelState.error([String? message]) = Error;
}
