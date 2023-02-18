import 'package:json_annotation/json_annotation.dart';

part 'patientDetails.g.dart';

@JsonSerializable()
class PatientDetails {
  PatientDetails();

  late num? id;
  late String? name;
  late String? email;
  late String? phone;
  late String? photo;
  late String? password;
  late String? device_id;
  late String? token;
  late num? role;
  late num? status;
  late String? email_verified_at;
  late String? pres_doc;
  late String? lab_doc;
  late String? call_id;
  late String? created_at;
  late String? updated_at;

  factory PatientDetails.fromJson(Map<String, dynamic> json) =>
      _$PatientDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$PatientDetailsToJson(this);
}
