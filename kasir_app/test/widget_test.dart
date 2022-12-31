import 'package:intl/intl.dart';

void main() {
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final date = DateTime.now();
  final String formatted = formatter.format(date);
  print(formatted);
}
