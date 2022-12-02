import 'package:equatable/equatable.dart';

class ServerException extends Equatable implements Exception {
  final String message;
  const ServerException({required this.message});

  @override
  List<Object> get props => [message];
}

class ImageException extends Equatable implements Exception {
  final String message;
  const ImageException({required this.message});

  @override
  List<Object> get props => [message];
}

class LoginException extends Equatable implements Exception {
  final String message;
  const LoginException({required this.message});

  @override
  List<Object> get props => [message];
}
