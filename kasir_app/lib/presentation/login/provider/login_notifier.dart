import 'package:flutter/material.dart';

class LoginNotifier extends ChangeNotifier {
  int currentIndex = 0;
  bool isPassword = true;
  final PageController pageController = PageController();

  changePassword() {
    isPassword = !isPassword;
    notifyListeners();
  }

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  List<Map<String, dynamic>> imageData = [
    {
      'image': 'assets/img-1.png',
      'title': 'Mendata secara detail transaksi yang\nterjadi',
      'subtitle':
          'Mendata secara detail transaksi yang terjadi pada tiap-tiap cabang\nretail yang sudah dikonfigurasikan sebelumnya.'
    },
    {
      'image': 'assets/img-2.png',
      'title': 'Manajemen laporan di setiap\nperiode',
      'subtitle':
          'Laporan ringkasan dalam satu periode tertentu jika satu\nsaat di butuhkan kembali'
    },
    {
      'image': 'assets/img-3.png',
      'title': 'Memberikan laporan secara realtime\nsesuai dengan keadaan',
      'subtitle':
          'Memberikan laporan secara real-time atau langsung sesuai\ndengan keadaan di lapangan'
    }
  ];

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
}
