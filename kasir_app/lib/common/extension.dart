import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension ImagePath on String {
  String get toPNG => 'assets/$this.png';
  String get convertMoney => NumberFormat.currency(
        locale: 'id',
        symbol: 'Rp ',
        decimalDigits: 0,
      ).format(
        int.parse(this),
      );
}

extension SizeApp on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height - kToolbarHeight - 24;
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}
