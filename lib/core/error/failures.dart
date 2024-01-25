import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({
    this.message,
  });

  final String? message;

  @override
  List<Object?> get props => [message];
}

class NoInternetConnectionFailure implements Failure {
  @override
  String? get message => 'Can not connect to the Internet';

  @override
  List<Object?> get props => [message];

  @override
  bool? get stringify => true;
}

class ServerFailure implements Failure {
  const ServerFailure({
    this.message,
  });

  @override
  final String? message;

  @override
  List<Object?> get props => [message];

  @override
  bool? get stringify => true;
}

class GPSFailure implements Failure {
  const GPSFailure({
    this.message,
  });

  @override
  final String? message;

  @override
  List<Object?> get props => [message];

  @override
  bool? get stringify => true;
}
