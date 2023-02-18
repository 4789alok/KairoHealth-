import 'package:json_annotation/json_annotation.dart';
import "patientDetails.dart";
part 'patientData.g.dart';

@JsonSerializable()
class PatientData {
  PatientData();

  late num status;
  late String message;
  late List<PatientDetails> data;
  
  factory PatientData.fromJson(Map<String,dynamic> json) => _$PatientDataFromJson(json);
  Map<String, dynamic> toJson() => _$PatientDataToJson(this);
}
