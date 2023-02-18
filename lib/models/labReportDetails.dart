import 'package:json_annotation/json_annotation.dart';

part 'labReportDetails.g.dart';

@JsonSerializable()
class LabReportDetails {
  LabReportDetails();

  late num? id;
  late String? prescription_id;
  late String? test_name;
  late num? blood;
  late num? urine;
  late String? file;
  late String? created_at;
  late String? updated_at;
  late num? status;

  factory LabReportDetails.fromJson(Map<String, dynamic> json) =>
      _$LabReportDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$LabReportDetailsToJson(this);
}
