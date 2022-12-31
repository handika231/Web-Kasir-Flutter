import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constant.dart';
import '../../common/utils/pref_helper.dart';
import '../exception.dart';
import '../models/branch_model.dart';
import '../models/customer_model/customer_model.dart';
import '../models/inventory_model/inventory_model.dart';
import '../models/position_model/position_model.dart';
import '../models/user_model/user_model.dart';

abstract class RemoteDataSource {
  Future<List<BranchModel>> getListBranch();
  Future<List<PositionModel>> getListPosition();
  Future<UserModel> getUser();
  Future<UserModel> updateProfile(
      {required String name,
      required String email,
      required String phone,
      required int position});
  Future<BranchModel> getBranchById(int id);
  Future<PositionModel> getPositionById(int id);
  Future<List<CustomerModel>> getListCustomer();
  Future<CustomerModel> getCustomerById(int id);
  Future<List<InventoryModel>> getDueInventory();
  Future<List<InventoryModel>> getSaleInventory();
  Future<CustomerModel> createCustomer(CustomerModel customer);
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
  Future<UserModel> updateProfile({
    required String name,
    required String email,
    required String phone,
    required int position,
  }) async {
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
          'position_id': position,
          '_method': 'PATCH'
        }));
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return UserModel.fromJson(json.decode(response.body)['data']);
    } else {
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

  @override
  Future<List<InventoryModel>> getDueInventory() async {
    String token = await prefHelper.getToken();
    final response = await client.get(
        Uri.parse('${Urls.baseUrl}/api/transactions/pawn-goods/expired'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        });
    if (response.statusCode == 200) {
      List result = json.decode(response.body)['data'];
      return result.map((value) => InventoryModel.fromJson(value)).toList();
    } else {
      throw const ServerException(message: 'Gagal mengambil data inventory');
    }
  }

  @override
  Future<List<InventoryModel>> getSaleInventory() async {
    String token = await prefHelper.getToken();
    final response = await client.get(
        Uri.parse('${Urls.baseUrl}/api/transactions/pawn-goods/auctioned'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        });
    if (response.statusCode == 200) {
      List result = json.decode(response.body)['data'];
      return result.map((value) => InventoryModel.fromJson(value)).toList();
    } else {
      throw const ServerException(message: 'Gagal mengambil data inventory');
    }
  }

  @override
  Future<CustomerModel> createCustomer(CustomerModel customer) async {
    String token = await prefHelper.getToken();
    final url = Uri.parse('${Urls.baseUrl}/api/customers');
    final response = await client.post(url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: json.encode({
          'name': customer.name,
          'cif': customer.cif,
          'nik': customer.nik,
          'work': customer.work,
          'mother_name': customer.motherName,
          'status': customer.status,
          'email': customer.email,
          'phone_number': customer.phoneNumber,
          'address': customer.address,
        }));
    final result = json.decode(response.body);
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return CustomerModel.fromJson(result['data']);
    } else {
      throw ServerException(message: result['message']);
    }
  }
}
