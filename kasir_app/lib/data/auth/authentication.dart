import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:kasir_app/common/constant.dart';
import 'package:kasir_app/data/failure.dart';
import 'package:kasir_app/data/models/login_model/login_model.dart';

abstract class Authentication {
  Future<Either<Failure, LoginModel>> signIn(
      String username, String password, String branchId);

  Future<void> logOut();
}

class AuthenticationImpl implements Authentication {
  @override
  Future<Either<Failure, LoginModel>> signIn(
      String username, String password, String branchId) async {
    final response = await http.post(
      Uri.parse('${Urls.baseUrl}/api/auth/login'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: json.encode(
        {
          'username': username,
          'password': password,
          'branch_id': branchId,
        },
      ),
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body)['data'];
      Urls.apiToken = data['token'];
      return Right(LoginModel.fromJson(data));
    } else {
      return const Left(LoginFailure(message: 'Username atau Password salah'));
    }
  }

  @override
  Future<void> logOut() async {
    await http.post(
      Uri.parse('${Urls.baseUrl}/api/auth/logout'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        //ADD TOKEN HERE
        'Authorization': 'Bearer ${Urls.apiToken}',
      },
    );
  }
}
