import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../common/result_state.dart';
import '../../../common/utils/snackbar_helper.dart';
import '../../../data/auth/authentication.dart';
import '../../../domain/entities/branch.dart';
import '../../../domain/usecases/get_branch_id.dart';
import '../../../domain/usecases/get_list_branch.dart';

class LoginNotifier extends ChangeNotifier {
  final GetListBranch getListBranch;
  final GetBranchById getBranchById;
  final Authentication authentication;
  LoginNotifier(this.getListBranch, this.authentication, this.getBranchById);
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
  int branchId = 1;
  bool isHasData = false;
  late Branch branch;

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

  Future<Branch> fetchBranchById(int id) async {
    state = ResultState.loading;
    final result = await getBranchById.execute(id);
    branch = const Branch();
    result.fold((failure) {
      state = ResultState.error;
      notifyListeners();
    }, (data) {
      state = ResultState.hasData;
      isHasData = true;
      branch = data;
      notifyListeners();
    });
    return branch;
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
          SnackBarHelper.showSnackBar(
            context,
            message: 'Username atau Password salah',
            title: 'Gagal Login',
            contentType: ContentType.failure,
          );
        }, (data) {
          clear();
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

  void clear() {
    usernameController.clear();
    passwordController.clear();
  }

  @override
  void dispose() {
    super.dispose();
    clear();
    pageController.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }
}
