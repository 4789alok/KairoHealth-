import 'package:json_annotation/json_annotation.dart';

part 'prescriptionMedicineDetails.g.dart';

@JsonSerializable()
class PrescriptionMedicineDetails {
  PrescriptionMedicineDetails();

  late String? medicine_id;
  late String? medicine_name;
  late String? qty;

  factory PrescriptionMedicineDetails.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionMedicineDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$PrescriptionMedicineDetailsToJson(this);
}
