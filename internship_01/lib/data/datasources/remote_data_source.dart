import 'package:dio/dio.dart';

import '../../common/server_exception.dart';
import '../models/outlet_model.dart';

abstract class RemoteDataSource {
  Future<List<OutletModel>> getDataOutlet();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  Dio dio;
  RemoteDataSourceImpl(this.dio);

  @override
  Future<List<OutletModel>> getDataOutlet() async {
    final response =
        await dio.get('https://apikasir.gedhemargogandum.com/api/outlet');

    if (response.statusCode == 200) {
      List data = response.data['data'] as List;
      return data.map((e) => OutletModel.fromJson(e)).toList();
    } else {
      throw ServerException();
    }
  }
}
