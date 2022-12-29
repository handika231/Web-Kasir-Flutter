// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InventoryModel _$$_InventoryModelFromJson(Map<String, dynamic> json) =>
    _$_InventoryModel(
      id: json['id'] as int?,
      notaNumber: json['nota_number'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      dueDate: json['due_date'] as String?,
      extensionState: json['extension_state'] as String?,
      goodName: json['good_name'] as String?,
      pawnValue: json['pawn_value'] as int?,
      completeness: json['completeness'] as String?,
      minus: json['minus'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_InventoryModelToJson(_$_InventoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nota_number': instance.notaNumber,
      'date': instance.date?.toIso8601String(),
      'due_date': instance.dueDate,
      'extension_state': instance.extensionState,
      'good_name': instance.goodName,
      'pawn_value': instance.pawnValue,
      'completeness': instance.completeness,
      'minus': instance.minus,
      'status': instance.status,
    };
