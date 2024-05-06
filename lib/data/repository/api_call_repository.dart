import 'package:bloc_project/data/giphy_model.dart';
import 'package:dio/dio.dart';

Dio client = Dio();

class ApiCallRepository {
  ApiCallRepository._();
  static final instance = ApiCallRepository._();

  Future<GiphyModel?> getTrendingGiphyData({
    required int limit,
    required int offset,
  }) async {
    final response = await client.get(
        "https://api.giphy.com/v1/gifs/trending?api_key=lYljO9Mkq6SIxT7nCzpNraCVL9LFWJy9&limit=$limit&offset=$offset&rating=g&bundle=messaging_non_clips");
    if (response.statusCode == 200) {
      return GiphyModel.fromJson(response.data);
    }
    return null;
  }
}
