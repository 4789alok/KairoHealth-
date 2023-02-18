import 'package:json_annotation/json_annotation.dart';

part 'diseaseListDetails.g.dart';

@JsonSerializable()
class DiseaseListDetails {
  DiseaseListDetails();

  late num? id;
  late String? specialization;
  late String? disease;
  late String? photo;
  late String? description;

  factory DiseaseListDetails.fromJson(Map<String, dynamic> json) =>
      _$DiseaseListDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$DiseaseListDetailsToJson(this);
}
