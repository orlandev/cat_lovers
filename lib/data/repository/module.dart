import 'package:cat_lovers/data/repository/cat_repository_impl.dart';
import 'package:cat_lovers/data/source/module.dart';
import 'package:cat_lovers/domain/repository/cat_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final catRepositoryProvider =
    Provider<CatRepository>((ref) => CatRepositoryImpl(ref.read(apiProvider)));
