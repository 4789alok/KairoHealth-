// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patientDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientDetails _$PatientDetailsFromJson(Map<String, dynamic> json) =>
    PatientDetails()
      ..id = json['id'] as num?
      ..name = json['name'] as String?
      ..email = json['email'] as String?
      ..phone = json['phone'] as String?
      ..photo = json['photo'] as String?
      ..password = json['password'] as String?
      ..device_id = json['device_id'] as String?
      ..token = json['token'] as String?
      ..role = json['role'] as num?
      ..status = json['status'] as num?
      ..email_verified_at = json['email_verified_at'] as String?
      ..pres_doc = json['pres_doc'] as String?
      ..lab_doc = json['lab_doc'] as String?
      ..call_id = json['call_id'] as String?
      ..created_at = json['created_at'] as String?
      ..updated_at = json['updated_at'] as String?;

Map<String, dynamic> _$PatientDetailsToJson(PatientDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'password': instance.password,
      'device_id': instance.device_id,
      'token': instance.token,
      'role': instance.role,
      'status': instance.status,
      'email_verified_at': instance.email_verified_at,
      'pres_doc': instance.pres_doc,
      'lab_doc': instance.lab_doc,
      'call_id': instance.call_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
