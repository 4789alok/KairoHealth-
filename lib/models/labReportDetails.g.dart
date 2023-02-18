// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'labReportDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LabReportDetails _$LabReportDetailsFromJson(Map<String, dynamic> json) =>
    LabReportDetails()
      ..id = json['id'] as num?
      ..prescription_id = json['prescription_id'] as String?
      ..test_name = json['test_name'] as String?
      ..blood = json['blood'] as num?
      ..urine = json['urine'] as num?
      ..file = json['file'] as String?
      ..created_at = json['created_at'] as String?
      ..updated_at = json['updated_at'] as String?
      ..status = json['status'] as num?;

Map<String, dynamic> _$LabReportDetailsToJson(LabReportDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'prescription_id': instance.prescription_id,
      'test_name': instance.test_name,
      'blood': instance.blood,
      'urine': instance.urine,
      'file': instance.file,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'status': instance.status,
    };
