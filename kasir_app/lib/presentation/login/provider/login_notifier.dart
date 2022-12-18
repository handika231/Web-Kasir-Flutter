import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kasir_app/common/result_state.dart';
import 'package:kasir_app/data/auth/authentication.dart';
import 'package:kasir_app/domain/entities/branch.dart';
import 'package:kasir_app/domain/usecases/get_list_branch.dart';

class LoginNotifier extends ChangeNotifier {
  final GetListBranch getListBranch;
  final Authentication authentication;
  LoginNotifier(this.getListBranch, this.authentication) {
    fetchListBranch();
  }
  int currentIndex = 0;
  bool isPassword = true;
  final PageController pageController = PageController();
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
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String branchId = '1';
  //key
  final formKey = GlobalKey<FormState>(debugLabel: '_loginForm');

  List<Branch> listBranch = [];
  ResultState state = ResultState.noData;
  Future<void> fetchListBranch() async {
    state = ResultState.loading;
    notifyListeners();
    final result = await getListBranch.execute();
    result.fold((failure) {
      state = ResultState.error;
      notifyListeners();
    }, (data) {
      state = ResultState.hasData;
      listBranch = data;
      notifyListeners();
    });
  }

  Future<void> login(context) async {
    try {
      if (formKey.currentState!.validate()) {
        final result = await authentication.signIn(
          usernameController.text,
          passwordController.text,
          branchId,
        );
        result.fold((failure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(failure.message),
          ));
        }, (data) {
          GoRouter.of(context).goNamed('menu');
        });
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> logout(context) async {
    final data = await authentication.logOut();
    debugPrint(data.toString());
    GoRouter.of(context).goNamed('login');
  }

  void changePassword() {
    isPassword = !isPassword;
    notifyListeners();
  }

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }
}
