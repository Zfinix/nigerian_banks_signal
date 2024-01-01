// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_list_response_model.freezed.dart';
part 'bank_list_response_model.g.dart';

@freezed
class BankListResponseModel with _$BankListResponseModel {
  const factory BankListResponseModel({
    required int id,
    required String name,
    required String slug,
    required String logo,
    String? ussd,
  }) = _BankListResponseModel;

  factory BankListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BankListResponseModelFromJson(json);
}
