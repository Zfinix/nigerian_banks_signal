// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankListResponseModelImpl _$$BankListResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BankListResponseModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
      logo: json['logo'] as String,
      ussd: json['ussd'] as String?,
    );

Map<String, dynamic> _$$BankListResponseModelImplToJson(
        _$BankListResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'logo': instance.logo,
      'ussd': instance.ussd,
    };
