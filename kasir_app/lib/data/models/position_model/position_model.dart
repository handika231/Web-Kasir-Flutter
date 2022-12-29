import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/position.dart';

part 'position_model.g.dart';

@JsonSerializable()
class PositionModel extends Equatable {
  final int? id;
  final String? name;

  const PositionModel({this.id, this.name});

  factory PositionModel.fromJson(Map<String, dynamic> json) {
    return _$PositionModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PositionModelToJson(this);

  PositionModel copyWith({
    int? id,
    String? name,
  }) {
    return PositionModel(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Position toEntity() {
    return Position(
      id: id ?? 0,
      name: name ?? '',
    );
  }

  @override
  List<Object?> get props => [id, name];
}
