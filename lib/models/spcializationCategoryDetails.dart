import 'package:json_annotation/json_annotation.dart';

part 'spcializationCategoryDetails.g.dart';

@JsonSerializable()
class SpcializationCategoryDetails {
  SpcializationCategoryDetails();

  late num? id;
  late String? specialization;
  late String? photo;

  factory SpcializationCategoryDetails.fromJson(Map<String, dynamic> json) =>
      _$SpcializationCategoryDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$SpcializationCategoryDetailsToJson(this);
}
