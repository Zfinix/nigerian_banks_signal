// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankListResponseModel _$BankListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _BankListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BankListResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String? get ussd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankListResponseModelCopyWith<BankListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankListResponseModelCopyWith<$Res> {
  factory $BankListResponseModelCopyWith(BankListResponseModel value,
          $Res Function(BankListResponseModel) then) =
      _$BankListResponseModelCopyWithImpl<$Res, BankListResponseModel>;
  @useResult
  $Res call({int id, String name, String slug, String logo, String? ussd});
}

/// @nodoc
class _$BankListResponseModelCopyWithImpl<$Res,
        $Val extends BankListResponseModel>
    implements $BankListResponseModelCopyWith<$Res> {
  _$BankListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? logo = null,
    Object? ussd = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      ussd: freezed == ussd
          ? _value.ussd
          : ussd // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankListResponseModelImplCopyWith<$Res>
    implements $BankListResponseModelCopyWith<$Res> {
  factory _$$BankListResponseModelImplCopyWith(
          _$BankListResponseModelImpl value,
          $Res Function(_$BankListResponseModelImpl) then) =
      __$$BankListResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String slug, String logo, String? ussd});
}

/// @nodoc
class __$$BankListResponseModelImplCopyWithImpl<$Res>
    extends _$BankListResponseModelCopyWithImpl<$Res,
        _$BankListResponseModelImpl>
    implements _$$BankListResponseModelImplCopyWith<$Res> {
  __$$BankListResponseModelImplCopyWithImpl(_$BankListResponseModelImpl _value,
      $Res Function(_$BankListResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? logo = null,
    Object? ussd = freezed,
  }) {
    return _then(_$BankListResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      ussd: freezed == ussd
          ? _value.ussd
          : ussd // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankListResponseModelImpl implements _BankListResponseModel {
  const _$BankListResponseModelImpl(
      {required this.id,
      required this.name,
      required this.slug,
      required this.logo,
      this.ussd});

  factory _$BankListResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankListResponseModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String logo;
  @override
  final String? ussd;

  @override
  String toString() {
    return 'BankListResponseModel(id: $id, name: $name, slug: $slug, logo: $logo, ussd: $ussd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankListResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.ussd, ussd) || other.ussd == ussd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug, logo, ussd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankListResponseModelImplCopyWith<_$BankListResponseModelImpl>
      get copyWith => __$$BankListResponseModelImplCopyWithImpl<
          _$BankListResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankListResponseModelImplToJson(
      this,
    );
  }
}

abstract class _BankListResponseModel implements BankListResponseModel {
  const factory _BankListResponseModel(
      {required final int id,
      required final String name,
      required final String slug,
      required final String logo,
      final String? ussd}) = _$BankListResponseModelImpl;

  factory _BankListResponseModel.fromJson(Map<String, dynamic> json) =
      _$BankListResponseModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String get logo;
  @override
  String? get ussd;
  @override
  @JsonKey(ignore: true)
  _$$BankListResponseModelImplCopyWith<_$BankListResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
