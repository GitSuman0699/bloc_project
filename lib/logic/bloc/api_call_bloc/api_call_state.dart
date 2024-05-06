part of 'api_call_bloc.dart';

class ApiCallState extends Equatable {
  final List<Data> data;
  final Status status;
  const ApiCallState({
    this.data = const [],
    this.status = Status.loading,
  });

  ApiCallState copyWith({
    List<Data>? data,
    Status? status,
  }) {
    return ApiCallState(
      data: data ?? this.data,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [data, status];
}
