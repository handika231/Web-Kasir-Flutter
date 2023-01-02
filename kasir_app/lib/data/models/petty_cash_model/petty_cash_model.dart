import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kasir_app/domain/entities/petty_cash.dart';

part 'petty_cash_model.freezed.dart';
part 'petty_cash_model.g.dart';

@freezed
class PettyCashModel with _$PettyCashModel {
  PettyCashModel._();
  factory PettyCashModel({
    int? id,
    String? date,
    String? title,
    int? amount,
    String? account,
    @JsonKey(name: 'account_code') String? accountCode,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _PettyCashModel;

  factory PettyCashModel.fromJson(Map<String, dynamic> json) =>
      _$PettyCashModelFromJson(json);

  PettyCash toEntity() {
    return PettyCash(
      id: id,
      date: date,
      title: title,
      amount: amount,
      account: account,
      accountCode: accountCode,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
