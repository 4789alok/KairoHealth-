// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescriptionListDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrescriptionListDetails _$PrescriptionListDetailsFromJson(
        Map<String, dynamic> json) =>
    PrescriptionListDetails()
      ..id = json['id'] as num
      ..doctor_id = json['doctor_id'] as num
      ..store_id = json['store_id'] as String
      ..patient_id = json['patient_id'] as String
      ..patient_name = json['patient_name'] as String
      ..patient_age = json['patient_age'] as String
      ..patient_address = json['patient_address'] as String
      ..patient_state = json['patient_state'] as String
      ..patient_city = json['patient_city'] as String
      ..patient_gender = json['patient_gender'] as String
      ..advice = json['advice'] as String
      ..created_at = json['created_at'] as String
      ..updated_at = json['updated_at'] as String
      ..status = json['status'] as num
      ..labtest = (json['labtest'] as List<dynamic>)
          .map((e) =>
              PrescriptionTestDetails.fromJson(e as Map<String, dynamic>))
          .toList()
      ..medicines = (json['medicines'] as List<dynamic>)
          .map((e) =>
              PrescriptionMedicineDetails.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$PrescriptionListDetailsToJson(
        PrescriptionListDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'doctor_id': instance.doctor_id,
      'store_id': instance.store_id,
      'patient_id': instance.patient_id,
      'patient_name': instance.patient_name,
      'patient_age': instance.patient_age,
      'patient_address': instance.patient_address,
      'patient_state': instance.patient_state,
      'patient_city': instance.patient_city,
      'patient_gender': instance.patient_gender,
      'advice': instance.advice,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'status': instance.status,
      'labtest': instance.labtest,
      'medicines': instance.medicines,
    };
