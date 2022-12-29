import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/inventory.dart';

part 'inventory_model.freezed.dart';
part 'inventory_model.g.dart';

@freezed
class InventoryModel with _$InventoryModel {
  InventoryModel._();
  factory InventoryModel({
    int? id,
    @JsonKey(name: 'nota_number') String? notaNumber,
    DateTime? date,
    @JsonKey(name: 'due_date') String? dueDate,
    @JsonKey(name: 'extension_state') String? extensionState,
    @JsonKey(name: 'good_name') String? goodName,
    @JsonKey(name: 'pawn_value') int? pawnValue,
    String? completeness,
    String? minus,
    String? status,
  }) = _InventoryModel;

  Inventory toEntity() {
    return Inventory(
      id: id ?? 0,
      nomorNota: notaNumber ?? '',
      date: date ?? DateTime.now(),
      dueDate: dueDate ?? '',
      extensionState: extensionState ?? '',
      goodName: goodName ?? '',
      pawnValue: pawnValue ?? 0,
      completeness: completeness ?? '',
      minus: minus ?? '',
      status: status ?? '',
    );
  }

  factory InventoryModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryModelFromJson(json);
}
