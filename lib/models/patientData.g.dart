// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patientData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientData _$PatientDataFromJson(Map<String, dynamic> json) => PatientData()
  ..status = json['status'] as num
  ..message = json['message'] as String
  ..data = (json['data'] as List<dynamic>)
      .map((e) => PatientDetails.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$PatientDataToJson(PatientData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
