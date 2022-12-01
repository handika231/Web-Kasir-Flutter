import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kasir_app/common/constant.dart';

import '../exception.dart';
import '../models/branch_model.dart';

abstract class RemoteDataSource {
  Future<List<BranchModel>> getListBranch();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final http.Client client;

  RemoteDataSourceImpl(this.client);

  @override
  Future<List<BranchModel>> getListBranch() async {
    final response = await client.get(Uri.parse('${Urls.baseUrl}/api/branchs'));
    if (response.statusCode == 200) {
      List result = json.decode(response.body)['data'];
      return result.map((value) => BranchModel.fromJson(value)).toList();
    } else {
      throw const ServerException(message: 'Gagal mengambil data cabang');
    }
  }
}
