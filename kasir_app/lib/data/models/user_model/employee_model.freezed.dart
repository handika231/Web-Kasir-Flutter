// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) {
  return _EmployeeModel.fromJson(json);
}

/// @nodoc
mixin _$EmployeeModel {
  PositionModel? get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'training_nip')
  String? get trainingNip => throw _privateConstructorUsedError;
  dynamic get nip => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  dynamic get phoneNumber => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_place')
  String? get birthPlace => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  String? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'entry_date')
  String? get entryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'join_date')
  String? get joinDate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'basic_salary')
  int? get basicSalary => throw _privateConstructorUsedError;
  int? get allowance => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_name')
  String? get bankName => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_account_number')
  String? get bankAccountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_account_name')
  String? get bankAccountName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeModelCopyWith<EmployeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeModelCopyWith<$Res> {
  factory $EmployeeModelCopyWith(
          EmployeeModel value, $Res Function(EmployeeModel) then) =
      _$EmployeeModelCopyWithImpl<$Res, EmployeeModel>;
  @useResult
  $Res call(
      {PositionModel? position,
      @JsonKey(name: 'training_nip') String? trainingNip,
      dynamic nip,
      @JsonKey(name: 'phone_number') dynamic phoneNumber,
      String? address,
      @JsonKey(name: 'birth_place') String? birthPlace,
      @JsonKey(name: 'birth_date') String? birthDate,
      @JsonKey(name: 'entry_date') String? entryDate,
      @JsonKey(name: 'join_date') String? joinDate,
      String? status,
      @JsonKey(name: 'basic_salary') int? basicSalary,
      int? allowance,
      @JsonKey(name: 'bank_name') String? bankName,
      @JsonKey(name: 'bank_account_number') String? bankAccountNumber,
      @JsonKey(name: 'bank_account_name') String? bankAccountName});
}

/// @nodoc
class _$EmployeeModelCopyWithImpl<$Res, $Val extends EmployeeModel>
    implements $EmployeeModelCopyWith<$Res> {
  _$EmployeeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? trainingNip = freezed,
    Object? nip = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? birthPlace = freezed,
    Object? birthDate = freezed,
    Object? entryDate = freezed,
    Object? joinDate = freezed,
    Object? status = freezed,
    Object? basicSalary = freezed,
    Object? allowance = freezed,
    Object? bankName = freezed,
    Object? bankAccountNumber = freezed,
    Object? bankAccountName = freezed,
  }) {
    return _then(_value.copyWith(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as PositionModel?,
      trainingNip: freezed == trainingNip
          ? _value.trainingNip
          : trainingNip // ignore: cast_nullable_to_non_nullable
              as String?,
      nip: freezed == nip
          ? _value.nip
          : nip // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      birthPlace: freezed == birthPlace
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      entryDate: freezed == entryDate
          ? _value.entryDate
          : entryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      joinDate: freezed == joinDate
          ? _value.joinDate
          : joinDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      basicSalary: freezed == basicSalary
          ? _value.basicSalary
          : basicSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      allowance: freezed == allowance
          ? _value.allowance
          : allowance // ignore: cast_nullable_to_non_nullable
              as int?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountNumber: freezed == bankAccountNumber
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountName: freezed == bankAccountName
          ? _value.bankAccountName
          : bankAccountName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmployeeModelCopyWith<$Res>
    implements $EmployeeModelCopyWith<$Res> {
  factory _$$_EmployeeModelCopyWith(
          _$_EmployeeModel value, $Res Function(_$_EmployeeModel) then) =
      __$$_EmployeeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PositionModel? position,
      @JsonKey(name: 'training_nip') String? trainingNip,
      dynamic nip,
      @JsonKey(name: 'phone_number') dynamic phoneNumber,
      String? address,
      @JsonKey(name: 'birth_place') String? birthPlace,
      @JsonKey(name: 'birth_date') String? birthDate,
      @JsonKey(name: 'entry_date') String? entryDate,
      @JsonKey(name: 'join_date') String? joinDate,
      String? status,
      @JsonKey(name: 'basic_salary') int? basicSalary,
      int? allowance,
      @JsonKey(name: 'bank_name') String? bankName,
      @JsonKey(name: 'bank_account_number') String? bankAccountNumber,
      @JsonKey(name: 'bank_account_name') String? bankAccountName});
}

/// @nodoc
class __$$_EmployeeModelCopyWithImpl<$Res>
    extends _$EmployeeModelCopyWithImpl<$Res, _$_EmployeeModel>
    implements _$$_EmployeeModelCopyWith<$Res> {
  __$$_EmployeeModelCopyWithImpl(
      _$_EmployeeModel _value, $Res Function(_$_EmployeeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? trainingNip = freezed,
    Object? nip = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? birthPlace = freezed,
    Object? birthDate = freezed,
    Object? entryDate = freezed,
    Object? joinDate = freezed,
    Object? status = freezed,
    Object? basicSalary = freezed,
    Object? allowance = freezed,
    Object? bankName = freezed,
    Object? bankAccountNumber = freezed,
    Object? bankAccountName = freezed,
  }) {
    return _then(_$_EmployeeModel(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as PositionModel?,
      trainingNip: freezed == trainingNip
          ? _value.trainingNip
          : trainingNip // ignore: cast_nullable_to_non_nullable
              as String?,
      nip: freezed == nip
          ? _value.nip
          : nip // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      birthPlace: freezed == birthPlace
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      entryDate: freezed == entryDate
          ? _value.entryDate
          : entryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      joinDate: freezed == joinDate
          ? _value.joinDate
          : joinDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      basicSalary: freezed == basicSalary
          ? _value.basicSalary
          : basicSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      allowance: freezed == allowance
          ? _value.allowance
          : allowance // ignore: cast_nullable_to_non_nullable
              as int?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountNumber: freezed == bankAccountNumber
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountName: freezed == bankAccountName
          ? _value.bankAccountName
          : bankAccountName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeModel extends _EmployeeModel {
  _$_EmployeeModel(
      {this.position,
      @JsonKey(name: 'training_nip') this.trainingNip,
      this.nip,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      this.address,
      @JsonKey(name: 'birth_place') this.birthPlace,
      @JsonKey(name: 'birth_date') this.birthDate,
      @JsonKey(name: 'entry_date') this.entryDate,
      @JsonKey(name: 'join_date') this.joinDate,
      this.status,
      @JsonKey(name: 'basic_salary') this.basicSalary,
      this.allowance,
      @JsonKey(name: 'bank_name') this.bankName,
      @JsonKey(name: 'bank_account_number') this.bankAccountNumber,
      @JsonKey(name: 'bank_account_name') this.bankAccountName})
      : super._();

  factory _$_EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeModelFromJson(json);

  @override
  final PositionModel? position;
  @override
  @JsonKey(name: 'training_nip')
  final String? trainingNip;
  @override
  final dynamic nip;
  @override
  @JsonKey(name: 'phone_number')
  final dynamic phoneNumber;
  @override
  final String? address;
  @override
  @JsonKey(name: 'birth_place')
  final String? birthPlace;
  @override
  @JsonKey(name: 'birth_date')
  final String? birthDate;
  @override
  @JsonKey(name: 'entry_date')
  final String? entryDate;
  @override
  @JsonKey(name: 'join_date')
  final String? joinDate;
  @override
  final String? status;
  @override
  @JsonKey(name: 'basic_salary')
  final int? basicSalary;
  @override
  final int? allowance;
  @override
  @JsonKey(name: 'bank_name')
  final String? bankName;
  @override
  @JsonKey(name: 'bank_account_number')
  final String? bankAccountNumber;
  @override
  @JsonKey(name: 'bank_account_name')
  final String? bankAccountName;

  @override
  String toString() {
    return 'EmployeeModel(position: $position, trainingNip: $trainingNip, nip: $nip, phoneNumber: $phoneNumber, address: $address, birthPlace: $birthPlace, birthDate: $birthDate, entryDate: $entryDate, joinDate: $joinDate, status: $status, basicSalary: $basicSalary, allowance: $allowance, bankName: $bankName, bankAccountNumber: $bankAccountNumber, bankAccountName: $bankAccountName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeModel &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.trainingNip, trainingNip) ||
                other.trainingNip == trainingNip) &&
            const DeepCollectionEquality().equals(other.nip, nip) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.birthPlace, birthPlace) ||
                other.birthPlace == birthPlace) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.entryDate, entryDate) ||
                other.entryDate == entryDate) &&
            (identical(other.joinDate, joinDate) ||
                other.joinDate == joinDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.basicSalary, basicSalary) ||
                other.basicSalary == basicSalary) &&
            (identical(other.allowance, allowance) ||
                other.allowance == allowance) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.bankAccountNumber, bankAccountNumber) ||
                other.bankAccountNumber == bankAccountNumber) &&
            (identical(other.bankAccountName, bankAccountName) ||
                other.bankAccountName == bankAccountName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      position,
      trainingNip,
      const DeepCollectionEquality().hash(nip),
      const DeepCollectionEquality().hash(phoneNumber),
      address,
      birthPlace,
      birthDate,
      entryDate,
      joinDate,
      status,
      basicSalary,
      allowance,
      bankName,
      bankAccountNumber,
      bankAccountName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeeModelCopyWith<_$_EmployeeModel> get copyWith =>
      __$$_EmployeeModelCopyWithImpl<_$_EmployeeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeModelToJson(
      this,
    );
  }
}

abstract class _EmployeeModel extends EmployeeModel {
  factory _EmployeeModel(
          {final PositionModel? position,
          @JsonKey(name: 'training_nip') final String? trainingNip,
          final dynamic nip,
          @JsonKey(name: 'phone_number') final dynamic phoneNumber,
          final String? address,
          @JsonKey(name: 'birth_place') final String? birthPlace,
          @JsonKey(name: 'birth_date') final String? birthDate,
          @JsonKey(name: 'entry_date') final String? entryDate,
          @JsonKey(name: 'join_date') final String? joinDate,
          final String? status,
          @JsonKey(name: 'basic_salary') final int? basicSalary,
          final int? allowance,
          @JsonKey(name: 'bank_name') final String? bankName,
          @JsonKey(name: 'bank_account_number') final String? bankAccountNumber,
          @JsonKey(name: 'bank_account_name') final String? bankAccountName}) =
      _$_EmployeeModel;
  _EmployeeModel._() : super._();

  factory _EmployeeModel.fromJson(Map<String, dynamic> json) =
      _$_EmployeeModel.fromJson;

  @override
  PositionModel? get position;
  @override
  @JsonKey(name: 'training_nip')
  String? get trainingNip;
  @override
  dynamic get nip;
  @override
  @JsonKey(name: 'phone_number')
  dynamic get phoneNumber;
  @override
  String? get address;
  @override
  @JsonKey(name: 'birth_place')
  String? get birthPlace;
  @override
  @JsonKey(name: 'birth_date')
  String? get birthDate;
  @override
  @JsonKey(name: 'entry_date')
  String? get entryDate;
  @override
  @JsonKey(name: 'join_date')
  String? get joinDate;
  @override
  String? get status;
  @override
  @JsonKey(name: 'basic_salary')
  int? get basicSalary;
  @override
  int? get allowance;
  @override
  @JsonKey(name: 'bank_name')
  String? get bankName;
  @override
  @JsonKey(name: 'bank_account_number')
  String? get bankAccountNumber;
  @override
  @JsonKey(name: 'bank_account_name')
  String? get bankAccountName;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeModelCopyWith<_$_EmployeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
