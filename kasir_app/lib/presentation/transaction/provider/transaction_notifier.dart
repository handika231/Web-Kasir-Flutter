import 'package:flutter/material.dart';

import '../widgets/gadai_widget.dart';
import '../widgets/lelang_widget.dart';
import '../widgets/perpanjangan_widget.dart';
import '../widgets/petty_cash_widget.dart';
import '../widgets/tebus_widget.dart';
import '../widgets/titip_widget.dart';

class TransactionNotifier extends ChangeNotifier {
  List<Widget> views = [
    const GadaiWidget(),
    const TebusWidget(),
    const PerpanjanganWidget(),
    const LelangWidget(),
    const TitipWidget(),
    const PettyCashWidget()
  ];
}
