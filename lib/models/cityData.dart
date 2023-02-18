import 'package:json_annotation/json_annotation.dart';
import "cityDetails.dart";
part 'cityData.g.dart';

@JsonSerializable()
class CityData {
  CityData();

  late num status;
  late String message;
  late List<CityDetails> data;
  
  factory CityData.fromJson(Map<String,dynamic> json) => _$CityDataFromJson(json);
  Map<String, dynamic> toJson() => _$CityDataToJson(this);
}
