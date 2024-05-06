part of 'api_call_bloc.dart';

abstract class ApiCallEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchData extends ApiCallEvent {}
