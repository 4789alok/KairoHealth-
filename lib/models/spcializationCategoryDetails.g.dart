// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spcializationCategoryDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpcializationCategoryDetails _$SpcializationCategoryDetailsFromJson(
        Map<String, dynamic> json) =>
    SpcializationCategoryDetails()
      ..id = json['id'] as num?
      ..specialization = json['specialization'] as String?
      ..photo = json['photo'] as String?;

Map<String, dynamic> _$SpcializationCategoryDetailsToJson(
        SpcializationCategoryDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'specialization': instance.specialization,
      'photo': instance.photo,
    };
