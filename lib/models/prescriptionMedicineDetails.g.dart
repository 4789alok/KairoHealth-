// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescriptionMedicineDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrescriptionMedicineDetails _$PrescriptionMedicineDetailsFromJson(
        Map<String, dynamic> json) =>
    PrescriptionMedicineDetails()
      ..medicine_id = json['medicine_id'] as String?
      ..medicine_name = json['medicine_name'] as String?
      ..qty = json['qty'] as String?;

Map<String, dynamic> _$PrescriptionMedicineDetailsToJson(
        PrescriptionMedicineDetails instance) =>
    <String, dynamic>{
      'medicine_id': instance.medicine_id,
      'medicine_name': instance.medicine_name,
      'qty': instance.qty,
    };
