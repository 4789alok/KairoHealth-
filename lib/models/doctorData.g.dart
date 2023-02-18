// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctorData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorData _$DoctorDataFromJson(Map<String, dynamic> json) => DoctorData()
  ..status = json['status'] as num
  ..message = json['message'] as String
  ..data = DoctorDetails.fromJson(json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$DoctorDataToJson(DoctorData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
