// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'petty_cash_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PettyCashModel _$$_PettyCashModelFromJson(Map<String, dynamic> json) =>
    _$_PettyCashModel(
      id: json['id'] as int?,
      date: json['date'] as String?,
      title: json['title'] as String?,
      amount: json['amount'] as int?,
      account: json['account'] as String?,
      accountCode: json['account_code'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_PettyCashModelToJson(_$_PettyCashModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'title': instance.title,
      'amount': instance.amount,
      'account': instance.account,
      'account_code': instance.accountCode,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
