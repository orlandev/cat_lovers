import 'package:cat_lovers/domain/model/cat_model.dart';
import 'package:cat_lovers/domain/repository/cat_repository.dart';
import 'package:cat_lovers/domain/use_cases/fetch_cats.dart';

class FetchCatsUseCaseImpl extends FetchCatsUseCase {
  final CatRepository catRepository;

  FetchCatsUseCaseImpl(this.catRepository);

  @override
  Future<List<dynamic>> execute({required int limit}) async {
    return catRepository.fetchCats(limit: limit);
  }
}
