import 'package:cat_lovers/domain/model/cat_model.dart';
import 'package:cat_lovers/domain/repository/cat_repository.dart';
import 'package:cat_lovers/domain/source/api_service.dart';

class CatRepositoryImpl extends CatRepository {
  final ApiService api;

  CatRepositoryImpl(this.api);

  @override
  Future<List<dynamic>> fetchCats({required int limit}) {
    return api.fetchCats(limit: limit);
  }
}
