import 'package:json_annotation/json_annotation.dart';
import "labReportDetails.dart";
part 'labReportData.g.dart';

@JsonSerializable()
class LabReportData {
  LabReportData();

  late num status;
  late String message;
  late List<LabReportDetails> data;
  
  factory LabReportData.fromJson(Map<String,dynamic> json) => _$LabReportDataFromJson(json);
  Map<String, dynamic> toJson() => _$LabReportDataToJson(this);
}
