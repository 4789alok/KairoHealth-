import 'package:json_annotation/json_annotation.dart';
import "diseaseListDetails.dart";
part 'diseaseListData.g.dart';

@JsonSerializable()
class DiseaseListData {
  DiseaseListData();

  late num status;
  late String message;
  late List<DiseaseListDetails> data;
  
  factory DiseaseListData.fromJson(Map<String,dynamic> json) => _$DiseaseListDataFromJson(json);
  Map<String, dynamic> toJson() => _$DiseaseListDataToJson(this);
}
