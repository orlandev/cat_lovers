import 'package:freezed_annotation/freezed_annotation.dart';

import 'weight.dart';
import 'package:flutter/foundation.dart';

part 'breeds.freezed.dart';
part 'breeds.g.dart';

@freezed
class Breeds with _$Breeds {
  const factory Breeds(
      {Weight? weight,
      String? id,
      String? name,
      String? temperament,
      String? origin,
      String? countryCodes,
      String? countryCode,
      String? description,
      String? lifeSpan,
      int? indoor,
      int? lap,
      String? altNames,
      int? adaptability,
      int? affectionLevel,
      int? childFriendly,
      int? dogFriendly,
      int? energyLevel,
      int? grooming,
      int? healthIssues,
      int? intelligence,
      int? sheddingLevel,
      int? socialNeeds,
      int? strangerFriendly,
      int? vocalisation,
      int? experimental,
      int? hairless,
      int? natural,
      int? rare,
      int? rex,
      int? suppressedTail,
      int? shortLegs,
      String? wikipediaUrl,
      int? hypoallergenic,
      String? referenceImageId}) = _Breeds;

  factory Breeds.fromJson(Map<String, dynamic> json) => _$BreedsFromJson(json);
}
