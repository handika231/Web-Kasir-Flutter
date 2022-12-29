import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../common/constant.dart';
import '../../common/utils/pref_helper.dart';
import '../failure.dart';
import '../models/login_model/login_model.dart';

abstract class Authentication {
  Future<Either<Failure, LoginModel>> signIn(
      String username, String password, int branchId);

  Future logOut();
}

class AuthenticationImpl implements Authentication {
  PrefHelper prefHelper = PrefHelper();
  @override
  Future<Either<Failure, LoginModel>> signIn(
      String username, String password, int branchId) async {
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
      debugPrint(data['token'].toString());
      Urls.token = data['token'];
      await prefHelper.saveToken(data['token']);

      return Right(LoginModel.fromJson(data));
    } else {
      return const Left(LoginFailure(message: 'Username atau Password salah'));
    }
  }

  @override
  Future logOut() async {
    String token = await prefHelper.getToken();
    Urls.token = '';
    final data = await http.post(
      Uri.parse('${Urls.baseUrl}/api/auth/logout'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        //ADD TOKEN HERE
        'Authorization': 'Bearer $token',
      },
    );
    prefHelper.removeToken();
    final result = json.decode(data.body);
    debugPrint(result.toString());
  }
}
