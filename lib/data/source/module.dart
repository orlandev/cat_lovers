import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/source/api_service.dart';
import 'api_service_impl.dart';

final apiProvider = Provider<ApiService>((ref) => CatApiService());
