import 'dart:math';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_lovers/domain/model/cat_model.dart';
import 'package:cat_lovers/ui/view_model/module.dart';
import 'package:cat_lovers/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:octo_image/octo_image.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cats = ref.watch(catsListState);

    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        bottomNavigationBar: PreferredSize(
          preferredSize: const Size(
            double.infinity,
            56.0,
          ),
          child: ClipRRect(
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                child: Container(
                  height: 56.0,
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.1),
                  child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Made in "),
                          FlutterLogo(
                            size: 20.0,
                          )
                        ]),
                  ),
                )),
          ),
        ),
        appBar: PreferredSize(
          preferredSize: const Size(
            double.infinity,
            56.0,
          ),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
              child: AppBar(
                centerTitle: true,
                title: const Text("Cat Lovers"),
                elevation: 0.0,
                backgroundColor: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
        ),
        body: Center(
          child: Container(
            constraints:
                const BoxConstraints(maxWidth: (kIsWeb) ? 360 : double.infinity),
            child: (cats.isNotEmpty)
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: GridView.count(
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          crossAxisCount: 2,
                          children: [
                            for (CatModel cat in cats)
                              GestureDetector(
                                  onTap: () {
                                    context.goNamed('details', extra: cat);
                                  },
                                  child: CatItem(cat: cat)),
                          ]),
                    )
                  : const Center(child: CircularProgressIndicator()),
          ),
        ));
  }
}

class CatItem extends StatelessWidget {
  const CatItem({Key? key, required this.cat}) : super(key: key);

  final CatModel cat;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Hero(
              tag: cat.id ?? Random().nextInt(9999).toString(),
              child: OctoImage(
                image:
                    CachedNetworkImageProvider(cat.url ?? "", headers: headers),
                fit: BoxFit.cover,
                placeholderBuilder: (context) =>
                    const Center(child: CircularProgressIndicator()),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.black,
              Colors.transparent,
            ], begin: Alignment.bottomCenter, end: Alignment.center)),
          ),
          if (cat.breeds != null && cat.breeds!.isNotEmpty)
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(cat.breeds!.first.name ?? ""),
            )
        ],
      ),
    );
  }
}
