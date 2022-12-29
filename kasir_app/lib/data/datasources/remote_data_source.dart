import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kasir_app/common/constant.dart';
import 'package:kasir_app/common/utils/pref_helper.dart';
import 'package:kasir_app/data/models/customer_model/customer_model.dart';
import 'package:kasir_app/data/models/position_model/position_model.dart';
import 'package:kasir_app/data/models/user_model/user_model.dart';

import '../exception.dart';
import '../models/branch_model.dart';

abstract class RemoteDataSource {
  Future<List<BranchModel>> getListBranch();
  Future<List<PositionModel>> getListPosition();
  Future<UserModel> getUser();
  Future<UserModel> updateProfile({
    required String name,
    required String email,
    required String phone,
    required String password,
    required String position,
    required String image,
  });
  Future<BranchModel> getBranchById(int id);
  Future<PositionModel> getPositionById(int id);
  Future<List<CustomerModel>> getListCustomer();
  Future<CustomerModel> getCustomerById(int id);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final http.Client client;
  PrefHelper prefHelper = PrefHelper();

  RemoteDataSourceImpl(this.client);

  @override
  Future<List<BranchModel>> getListBranch() async {
    final response =
        await client.get(Uri.parse('${Urls.baseUrl}/api/branchs'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    if (response.statusCode == 200) {
      List result = json.decode(response.body)['data'];
      return result.map((value) => BranchModel.fromJson(value)).toList();
    } else {
      throw const ServerException(message: 'Gagal mengambil data cabang');
    }
  }

  @override
  Future<List<PositionModel>> getListPosition() async {
    String token = await prefHelper.getToken();
    final response =
        await client.get(Uri.parse('${Urls.baseUrl}/api/positions'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      List result = json.decode(response.body)['data'];
      return result.map((value) => PositionModel.fromJson(value)).toList();
    } else {
      throw const ServerException(message: 'Gagal mengambil list jabatan');
    }
  }

  @override
  Future<UserModel> getUser() async {
    String token = await prefHelper.getToken();
    final response =
        await client.get(Uri.parse('${Urls.baseUrl}/api/user'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      return UserModel.fromJson(json.decode(response.body)['data']);
    } else {
      throw const ServerException(message: 'Gagal mengambil data user');
    }
  }

  @override
  Future<UserModel> updateProfile(
      {required String name,
      required String email,
      required String phone,
      required String password,
      required String position,
      required String image}) async {
    String token = await prefHelper.getToken();

    final response = await client.post(Uri.parse('${Urls.baseUrl}/api/user'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: json.encode({
          'name': name,
          'email': email,
          'phone_number': phone,
          'password': password,
          'position_id': position,
          // 'profile_picture': image,
          //send file
          '_method': 'PATCH'
        }));
    if (response.statusCode == 200) {
      return UserModel.fromJson(json.decode(response.body)['data']);
    } else {
      debugPrint(response.body);
      debugPrint(response.statusCode.toString());
      throw const ServerException(message: 'Gagal mengambil data user');
    }
  }

  @override
  Future<BranchModel> getBranchById(int id) async {
    final response = await client
        .get(Uri.parse('${Urls.baseUrl}/api/branchs/$id'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    if (response.statusCode == 200) {
      return BranchModel.fromJson(json.decode(response.body)['data']);
    } else {
      throw const ServerException(message: 'Gagal mengambil data cabang');
    }
  }

  @override
  Future<PositionModel> getPositionById(int id) async {
    String token = await prefHelper.getToken();
    final response = await client
        .get(Uri.parse('${Urls.baseUrl}/api/positions/$id'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      return PositionModel.fromJson(json.decode(response.body)['data']);
    } else {
      throw const ServerException(message: 'Gagal mengambil data jabatan');
    }
  }

  @override
  Future<List<CustomerModel>> getListCustomer() async {
    String token = await prefHelper.getToken();
    final response =
        await client.get(Uri.parse('${Urls.baseUrl}/api/customers'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      List result = json.decode(response.body)['data'];
      return result.map((value) => CustomerModel.fromJson(value)).toList();
    } else {
      throw const ServerException(message: 'Gagal mengambil data customer');
    }
  }

  @override
  Future<CustomerModel> getCustomerById(int id) async {
    String token = await prefHelper.getToken();
    final response = await client
        .get(Uri.parse('${Urls.baseUrl}/api/customers/$id'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      return CustomerModel.fromJson(
          json.decode(response.body)['data']['customer']);
    } else {
      throw const ServerException(message: 'Gagal mengambil data customer');
    }
  }
}
