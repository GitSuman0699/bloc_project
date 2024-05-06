import 'package:bloc/bloc.dart';
import 'package:bloc_project/data/giphy_model.dart';
import 'package:bloc_project/data/repository/api_call_repository.dart';
import 'package:bloc_project/logic/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'api_call_event.dart';
part 'api_call_state.dart';

class ApiCallBloc extends Bloc<ApiCallEvent, ApiCallState> {
  final List<Data> _giphyList = [];
  final int _currentPage = 1;
  late final int _totalPage;
  final int _limit = 20;
  ApiCallBloc() : super(const ApiCallState()) {
    on<FetchData>(fetchData);
  }

  void fetchData(FetchData event, Emitter<ApiCallState> emit) async {
    try {
      final offset = (_currentPage - 1) * _limit;
      final response = await ApiCallRepository.instance
          .getTrendingGiphyData(limit: _limit, offset: offset);

      _giphyList.addAll(List.from(response!.data!));

      _totalPage = (response.pagination!.totalCount! / _limit).ceil();

      emit(state.copyWith(data: List.from(_giphyList), status: Status.success));
    } catch (e) {
      emit(state.copyWith(status: Status.error));
      rethrow;
    }
  }
}
