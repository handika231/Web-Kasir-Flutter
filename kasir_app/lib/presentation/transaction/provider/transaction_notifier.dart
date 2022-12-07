import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/transaction/widgets/tebus_widget.dart';

import '../widgets/gadai_widget.dart';
import '../widgets/petty_cash_widget.dart';

class TransactionNotifier extends ChangeNotifier {
  List<Widget> views = [
    const GadaiWidget(),
    const TebusWidget(),
    const Center(
      child: Text('Perpanjangan'),
    ),
    const Center(
      child: Text('Lelang'),
    ),
    const Center(
      child: Text('Titip'),
    ),
    const PettyCashWidget()
  ];
}
