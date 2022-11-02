import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constant.dart';
import '../../common/server_exception.dart';
import '../models/outlet_model.dart';

abstract class RemoteDataSource {
  Future<List<OutletModel>> getDataOutlet();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  http.Client client;
  RemoteDataSourceImpl(this.client);

  @override
  Future<List<OutletModel>> getDataOutlet() async {
    final response = await client.get(
      Uri.parse(BASE_URL),
    );

    if (response.statusCode == 200) {
      List data = (json.decode(response.body))['data'];

      return data.map((e) => OutletModel.fromMap(e)).toList();
    } else {
      throw ServerException();
    }
  }
}
