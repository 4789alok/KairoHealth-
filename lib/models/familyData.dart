import 'package:json_annotation/json_annotation.dart';
import "familyDetails.dart";
part 'familyData.g.dart';

@JsonSerializable()
class FamilyData {
  FamilyData();

  late num status;
  late String message;
  late List<FamilyDetails> data;
  
  factory FamilyData.fromJson(Map<String,dynamic> json) => _$FamilyDataFromJson(json);
  Map<String, dynamic> toJson() => _$FamilyDataToJson(this);
}
