import 'package:json_annotation/json_annotation.dart';
import "spcializationCategoryDetails.dart";
part 'spcializationCategoryData.g.dart';

@JsonSerializable()
class SpcializationCategoryData {
  SpcializationCategoryData();

  late num status;
  late String message;
  late List<SpcializationCategoryDetails> data;
  
  factory SpcializationCategoryData.fromJson(Map<String,dynamic> json) => _$SpcializationCategoryDataFromJson(json);
  Map<String, dynamic> toJson() => _$SpcializationCategoryDataToJson(this);
}
