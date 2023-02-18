import 'package:json_annotation/json_annotation.dart';
import "prescriptionListDetails.dart";
part 'prescriptionListData.g.dart';

@JsonSerializable()
class PrescriptionListData {
  PrescriptionListData();

  late num status;
  late String message;
  late List<PrescriptionListDetails> data;
  
  factory PrescriptionListData.fromJson(Map<String,dynamic> json) => _$PrescriptionListDataFromJson(json);
  Map<String, dynamic> toJson() => _$PrescriptionListDataToJson(this);
}
