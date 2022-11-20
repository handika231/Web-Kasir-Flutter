import 'package:intl/intl.dart';

extension ImagePath on String {
  String get toPNG => 'assets/$this.png';
}

extension ConvertMoney on String {
  String get convertMoney => NumberFormat.currency(
        locale: 'id',
        symbol: 'Rp ',
        decimalDigits: 0,
      ).format(
        int.parse(this),
      );
}
