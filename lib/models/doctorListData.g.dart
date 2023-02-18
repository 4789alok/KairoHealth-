// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctorListData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorListData _$DoctorListDataFromJson(Map<String, dynamic> json) =>
    DoctorListData()
      ..status = json['status'] as num
      ..message = json['message'] as String
      ..data = (json['data'] as List<dynamic>)
          .map((e) => DoctorDetails.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DoctorListDataToJson(DoctorListData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
