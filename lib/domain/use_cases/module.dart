import 'package:cat_lovers/data/repository/module.dart';
import 'package:cat_lovers/domain/use_cases/fetch_cats.dart';
import 'package:cat_lovers/domain/use_cases/fetch_cats_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchCatsProvider = Provider<FetchCatsUseCase>(
    (ref) => FetchCatsUseCaseImpl(ref.read(catRepositoryProvider)));
