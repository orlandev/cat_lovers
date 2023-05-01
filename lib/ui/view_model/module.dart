import 'package:cat_lovers/domain/model/cat_model.dart';
import 'package:cat_lovers/domain/use_cases/module.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CatStateNotifier extends StateNotifier<List<CatModel>> {
  final Ref ref;
  late final cats = ref.read(fetchCatsProvider);

  CatStateNotifier(this.ref) : super(List<CatModel>.empty()) {
    fetchCats(50);
  }

  Future<void> fetchCats(int limit) async {
    final catList = await cats.execute(limit: limit);
    final result = catList.map((e) => CatModel.fromJson(e)).toList();
    state = result;
  }
}

final catsListState = StateNotifierProvider<CatStateNotifier, List<CatModel>>(
    (ref) => CatStateNotifier(ref));

final catsListModel = Provider((ref) {
  return ref.watch(catsListState.notifier);
});
