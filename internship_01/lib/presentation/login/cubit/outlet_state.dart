part of 'outlet_cubit.dart';

abstract class OutletState extends Equatable {
  const OutletState();

  @override
  List<Object> get props => [];
}

class OutletEmpty extends OutletState {}

class OutletLoading extends OutletState {}

class OutletError extends OutletState {
  final String message;

  const OutletError(this.message);

  @override
  List<Object> get props => [message];
}

class OutletHasData extends OutletState {
  final List<Outlet> outlet;

  const OutletHasData(this.outlet);

  @override
  List<Object> get props => [outlet];
}
