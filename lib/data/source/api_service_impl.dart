// package we need for json encode/decode
import 'dart:convert';
import 'package:cat_lovers/domain/model/cat_model.dart';
import 'package:cat_lovers/domain/source/api_service.dart';
import 'package:dio/dio.dart';

class CatApiService extends ApiService {
  late final Dio _dio = Dio(BaseOptions(
      baseUrl: "https://api.thecatapi.com",
      responseType: ResponseType.json,
      headers: {
        "x-api-key":
            "live_Ms69iQjP57u6xkSnM2J7skC0V4BEmsQkO4KhOTm25ZXrybL7jNkuN7AccVRxfHTP"
      }));

  @override
  Future<List<dynamic>> fetchCats({required int limit}) async {
    final cats = await _dio.get('/v1/images/search?limit=$limit&has_breeds=1');
    return cats.data;
  }
}
