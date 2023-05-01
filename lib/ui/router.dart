import 'package:cat_lovers/domain/model/cat_model.dart';
import 'package:cat_lovers/ui/view/detail_screen.dart';
import 'package:cat_lovers/ui/view/home_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            name: "details",
            path: 'home/details',
            builder: (context, state) {
              final cat = state.extra as CatModel;
              return DetailScreen(
                catSelected: cat,
              );
            },
          ),
        ]),
  ],
);
