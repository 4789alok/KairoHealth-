// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'familyDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FamilyDetails _$FamilyDetailsFromJson(Map<String, dynamic> json) =>
    FamilyDetails()
      ..id = json['id'] as num
      ..user_id = json['user_id'] as String
      ..name = json['name'] as String
      ..email = json['email'] as String
      ..phone = json['phone'] as String
      ..relation = json['relation'] as String
      ..gender = json['gender'] as String
      ..status = json['status'] as num
      ..created_at = json['created_at'] as String
      ..updated_at = json['updated_at'] as String;

Map<String, dynamic> _$FamilyDetailsToJson(FamilyDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'relation': instance.relation,
      'gender': instance.gender,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
