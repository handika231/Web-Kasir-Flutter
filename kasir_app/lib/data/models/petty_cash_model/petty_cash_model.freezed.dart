// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'petty_cash_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PettyCashModel _$PettyCashModelFromJson(Map<String, dynamic> json) {
  return _PettyCashModel.fromJson(json);
}

/// @nodoc
mixin _$PettyCashModel {
  int? get id => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get account => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_code')
  String? get accountCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PettyCashModelCopyWith<PettyCashModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PettyCashModelCopyWith<$Res> {
  factory $PettyCashModelCopyWith(
          PettyCashModel value, $Res Function(PettyCashModel) then) =
      _$PettyCashModelCopyWithImpl<$Res, PettyCashModel>;
  @useResult
  $Res call(
      {int? id,
      String? date,
      String? title,
      int? amount,
      String? account,
      @JsonKey(name: 'account_code') String? accountCode,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$PettyCashModelCopyWithImpl<$Res, $Val extends PettyCashModel>
    implements $PettyCashModelCopyWith<$Res> {
  _$PettyCashModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? title = freezed,
    Object? amount = freezed,
    Object? account = freezed,
    Object? accountCode = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCode: freezed == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PettyCashModelCopyWith<$Res>
    implements $PettyCashModelCopyWith<$Res> {
  factory _$$_PettyCashModelCopyWith(
          _$_PettyCashModel value, $Res Function(_$_PettyCashModel) then) =
      __$$_PettyCashModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? date,
      String? title,
      int? amount,
      String? account,
      @JsonKey(name: 'account_code') String? accountCode,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$_PettyCashModelCopyWithImpl<$Res>
    extends _$PettyCashModelCopyWithImpl<$Res, _$_PettyCashModel>
    implements _$$_PettyCashModelCopyWith<$Res> {
  __$$_PettyCashModelCopyWithImpl(
      _$_PettyCashModel _value, $Res Function(_$_PettyCashModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? title = freezed,
    Object? amount = freezed,
    Object? account = freezed,
    Object? accountCode = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_PettyCashModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCode: freezed == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PettyCashModel extends _PettyCashModel {
  _$_PettyCashModel(
      {this.id,
      this.date,
      this.title,
      this.amount,
      this.account,
      @JsonKey(name: 'account_code') this.accountCode,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : super._();

  factory _$_PettyCashModel.fromJson(Map<String, dynamic> json) =>
      _$$_PettyCashModelFromJson(json);

  @override
  final int? id;
  @override
  final String? date;
  @override
  final String? title;
  @override
  final int? amount;
  @override
  final String? account;
  @override
  @JsonKey(name: 'account_code')
  final String? accountCode;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'PettyCashModel(id: $id, date: $date, title: $title, amount: $amount, account: $account, accountCode: $accountCode, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PettyCashModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.accountCode, accountCode) ||
                other.accountCode == accountCode) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, title, amount, account,
      accountCode, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PettyCashModelCopyWith<_$_PettyCashModel> get copyWith =>
      __$$_PettyCashModelCopyWithImpl<_$_PettyCashModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PettyCashModelToJson(
      this,
    );
  }
}

abstract class _PettyCashModel extends PettyCashModel {
  factory _PettyCashModel(
          {final int? id,
          final String? date,
          final String? title,
          final int? amount,
          final String? account,
          @JsonKey(name: 'account_code') final String? accountCode,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$_PettyCashModel;
  _PettyCashModel._() : super._();

  factory _PettyCashModel.fromJson(Map<String, dynamic> json) =
      _$_PettyCashModel.fromJson;

  @override
  int? get id;
  @override
  String? get date;
  @override
  String? get title;
  @override
  int? get amount;
  @override
  String? get account;
  @override
  @JsonKey(name: 'account_code')
  String? get accountCode;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_PettyCashModelCopyWith<_$_PettyCashModel> get copyWith =>
      throw _privateConstructorUsedError;
}
