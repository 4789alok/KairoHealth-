// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testListDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestListDetails _$TestListDetailsFromJson(Map<String, dynamic> json) =>
    TestListDetails()
      ..id = json['id'] as num
      ..category = json['category'] as String
      ..logo = json['logo'] as String
      ..status = json['status'] as num
      ..created_at = json['created_at'] as String
      ..updated_at = json['updated_at'] as String;

Map<String, dynamic> _$TestListDetailsToJson(TestListDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'logo': instance.logo,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
