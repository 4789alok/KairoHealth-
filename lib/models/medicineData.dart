import 'package:json_annotation/json_annotation.dart';
import "medicineDetails.dart";
part 'medicineData.g.dart';

@JsonSerializable()
class MedicineData {
  MedicineData();

  late num status;
  late String message;
  late List<MedicineDetails> data;
  
  factory MedicineData.fromJson(Map<String,dynamic> json) => _$MedicineDataFromJson(json);
  Map<String, dynamic> toJson() => _$MedicineDataToJson(this);
}
