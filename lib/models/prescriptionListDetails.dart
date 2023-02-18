import 'package:json_annotation/json_annotation.dart';
import "prescriptionTestDetails.dart";
import "prescriptionMedicineDetails.dart";
part 'prescriptionListDetails.g.dart';

@JsonSerializable()
class PrescriptionListDetails {
  PrescriptionListDetails();

  late num id;
  late num doctor_id;
  late String store_id;
  late String patient_id;
  late String patient_name;
  late String patient_age;
  late String patient_address;
  late String patient_state;
  late String patient_city;
  late String patient_gender;
  late String advice;
  late String created_at;
  late String updated_at;
  late num status;
  late List<PrescriptionTestDetails> labtest;
  late List<PrescriptionMedicineDetails> medicines;
  
  factory PrescriptionListDetails.fromJson(Map<String,dynamic> json) => _$PrescriptionListDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$PrescriptionListDetailsToJson(this);
}
