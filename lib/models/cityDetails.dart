import 'package:json_annotation/json_annotation.dart';

part 'cityDetails.g.dart';

@JsonSerializable()
class CityDetails {
  CityDetails();

  late num id;
  late String district;
  
  factory CityDetails.fromJson(Map<String,dynamic> json) => _$CityDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$CityDetailsToJson(this);
}
