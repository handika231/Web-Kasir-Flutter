import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kasir_app/common/constant.dart';
import 'package:kasir_app/data/models/position_model/position_model.dart';

import '../exception.dart';
import '../models/branch_model.dart';

abstract class RemoteDataSource {
  Future<List<BranchModel>> getListBranch();
  Future<List<PositionModel>> getPosition();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final http.Client client;

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
  Future<List<PositionModel>> getPosition() async {
    final response =
        await client.get(Uri.parse('${Urls.baseUrl}/api/positions'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ${Urls.apiToken}',
    });
    if (response.statusCode == 200) {
      List result = json.decode(response.body)['data'];
      return result.map((value) => PositionModel.fromJson(value)).toList();
    } else {
      throw const ServerException(message: 'Gagal mengambil list jabatan');
    }
  }
}
