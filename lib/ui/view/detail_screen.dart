import 'dart:math';

import 'package:any_link_preview/any_link_preview.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_lovers/domain/model/cat_model.dart';
import 'package:cat_lovers/ui/widgets/detail_title.dart';
import 'package:cat_lovers/ui/widgets/text_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends ConsumerWidget {
  const DetailScreen({Key? key, required this.catSelected}) : super(key: key);

  final CatModel catSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /*final cats = ref.watch(catsListState).firstWhere((element) =>
    element.id == catId);*/

    final headerHeight = MediaQuery.of(context).size.height * 0.40;
    final breeds = catSelected.breeds?.first;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Hero(
                  tag: catSelected.id ?? Random().nextInt(9999).toString(),
                  child: CachedNetworkImage(
                    width: double.infinity,
                    height: headerHeight,
                    imageUrl: catSelected.url ?? "",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 40,
                  child: IconButton(
                      onPressed: () {
                        context.go('/');
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        shadows: [
                          Shadow(color: Colors.black,blurRadius: 30 )
                        ],
                      )),
                )
              ],
            ),
            DetailTitle(
              leading: "Breeds",
              data: breeds?.name ?? " - ",
            ),
            DetailTitle(leading: "Origin", data: breeds?.origin ?? " - "),
            DetailTitle(
                leading: "Temperament", data: breeds?.temperament ?? " - "),
            DetailTitle(
                leading: "Description", data: breeds?.description ?? " - "),
            if (breeds?.lifeSpan != null)
              DetailTitle(
                  leading: "Life Span", data: breeds?.lifeSpan ?? " - "),
            if (breeds?.adaptability != null)
              TextStars(
                  leading: "Adaptability", stars: breeds!.adaptability ?? 0),
            if (breeds?.affectionLevel != null)
              TextStars(
                  leading: "Affection Level",
                  stars: breeds!.affectionLevel ?? 0),
            if (breeds?.childFriendly != null)
              TextStars(
                  leading: "Child Friendly", stars: breeds!.childFriendly ?? 0),

            if (breeds?.dogFriendly != null)
              TextStars(
                  leading: "Dog Friendly", stars: breeds!.dogFriendly ?? 0),

            if (breeds?.energyLevel != null)
              TextStars(
                  leading: "Energy Level", stars: breeds!.energyLevel ?? 0),

            if (breeds?.grooming != null)
              TextStars(leading: "Grooming", stars: breeds!.grooming ?? 0),

            if (breeds?.healthIssues != null)
              TextStars(
                  leading: "Health Issues", stars: breeds!.healthIssues ?? 0),

            if (breeds?.intelligence != null)
              TextStars(
                  leading: "Intelligence", stars: breeds!.intelligence ?? 0),

            if (breeds?.sheddingLevel != null)
              TextStars(
                  leading: "Shedding Level", stars: breeds!.sheddingLevel ?? 0),

            if (breeds?.socialNeeds != null)
              TextStars(
                  leading: "Social Needs", stars: breeds!.socialNeeds ?? 0),

            if (breeds?.strangerFriendly != null)
              TextStars(
                  leading: "Stranger Friendly",
                  stars: breeds!.strangerFriendly ?? 0),

            if (breeds?.vocalisation != null)
              TextStars(
                  leading: "Vocalisation", stars: breeds!.vocalisation ?? 0),
            if (breeds?.experimental != null)
              TextStars(
                  leading: "Experimental", stars: breeds!.experimental ?? 0),

            if (breeds?.hairless != null)
              TextStars(leading: "Hairless", stars: breeds!.hairless ?? 0),

            if (breeds?.natural != null)
              TextStars(leading: "Natural", stars: breeds!.natural ?? 0),
            if (breeds?.rare != null)
              TextStars(leading: "Rare", stars: breeds!.rare ?? 0),
            if (breeds?.rex != null)
              TextStars(leading: "Rex", stars: breeds!.rex ?? 0),

            if (breeds?.suppressedTail != null)
              TextStars(
                  leading: "Suppressed Tail",
                  stars: breeds!.suppressedTail ?? 0),

            if (breeds?.shortLegs != null)
              TextStars(leading: "ShortLegs", stars: breeds!.shortLegs ?? 0),
            if (breeds?.hypoallergenic != null)
              TextStars(
                  leading: "Hypoallergenic",
                  stars: breeds!.hypoallergenic ?? 0),
            if (breeds?.wikipediaUrl != null &&
                (breeds?.wikipediaUrl ?? "").isNotEmpty)
              Column(
                children: [
                  const DetailTitle(leading: "Wikipedia", data: ""),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AnyLinkPreview(
                      link: breeds?.wikipediaUrl ?? "",
                      onTap: () {
                        launchUrl(Uri.parse(breeds?.wikipediaUrl ?? ""));
                      }, //
                    ),
                  ),
                ],
              ),

            //  String? ,

            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
