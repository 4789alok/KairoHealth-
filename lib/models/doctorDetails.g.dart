// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctorDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorDetails _$DoctorDetailsFromJson(Map<String, dynamic> json) =>
    DoctorDetails()
      ..id = json['id'] as num?
      ..name = json['name'] as String?
      ..photo = json['photo'] as String?
      ..specialization = json['specialization'] as String?
      ..experience = json['experience'] as String?
      ..post = json['post'] as String?
      ..fee = json['fee'] as String?
      ..address = json['address'] as String?;

Map<String, dynamic> _$DoctorDetailsToJson(DoctorDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
      'specialization': instance.specialization,
      'experience': instance.experience,
      'post': instance.post,
      'fee': instance.fee,
      'address': instance.address,
    };
