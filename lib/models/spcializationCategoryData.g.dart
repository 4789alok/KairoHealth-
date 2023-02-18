// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spcializationCategoryData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpcializationCategoryData _$SpcializationCategoryDataFromJson(
        Map<String, dynamic> json) =>
    SpcializationCategoryData()
      ..status = json['status'] as num
      ..message = json['message'] as String
      ..data = (json['data'] as List<dynamic>)
          .map((e) =>
              SpcializationCategoryDetails.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$SpcializationCategoryDataToJson(
        SpcializationCategoryData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
