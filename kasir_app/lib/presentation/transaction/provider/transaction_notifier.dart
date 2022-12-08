import 'package:flutter/material.dart';
import 'package:kasir_app/presentation/transaction/widgets/lelang_widget.dart';
import 'package:kasir_app/presentation/transaction/widgets/perpanjangan_widget.dart';
import 'package:kasir_app/presentation/transaction/widgets/tebus_widget.dart';
import 'package:kasir_app/presentation/transaction/widgets/titip_widget.dart';

import '../widgets/gadai_widget.dart';
import '../widgets/petty_cash_widget.dart';

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
