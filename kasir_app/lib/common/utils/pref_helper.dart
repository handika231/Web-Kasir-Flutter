import 'package:shared_preferences/shared_preferences.dart';

class PrefHelper {
  //save token
  Future<bool> saveToken(String token) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString('token', token);
  }

  //get token
  Future<String> getToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('token') ?? '';
  }

  //remove token
  Future<bool> removeToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.remove('token');
  }
}
