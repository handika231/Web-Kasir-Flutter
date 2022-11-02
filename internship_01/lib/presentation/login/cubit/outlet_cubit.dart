import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/outlet.dart';
import '../../../domain/usecases/get_data_outlet.dart';

part 'outlet_state.dart';

class OutletCubit extends Cubit<OutletState> {
  final GetDataOutlet getDataOutlet;
  OutletCubit(this.getDataOutlet) : super(OutletEmpty()) {
    fetchDataOutlet();
  }

  List<Outlet> listOfOutlet = [];
  String _valueOutlet = 'Roti Gedhe Monjali';
  String get valueOutlet => _valueOutlet;
  set valueOutlet(String value) {
    _valueOutlet = value;
    emit(OutletHasData(listOfOutlet));
  }
  //setter and getter

  Future<void> fetchDataOutlet() async {
    emit(OutletLoading());
    final result = await getDataOutlet.execute();
    result.fold(
      (failure) => emit(OutletError(failure.message)),
      (data) {
        listOfOutlet = data;
        emit(
          OutletHasData(data),
        );
      },
    );
  }
}
