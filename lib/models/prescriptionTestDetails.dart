import 'package:json_annotation/json_annotation.dart';

part 'prescriptionTestDetails.g.dart';

@JsonSerializable()
class PrescriptionTestDetails {
  PrescriptionTestDetails();

  late String? test_Titel;
  late bool? urin;
  late bool? Blood;

  factory PrescriptionTestDetails.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionTestDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$PrescriptionTestDetailsToJson(this);
}
