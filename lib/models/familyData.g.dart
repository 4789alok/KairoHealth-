// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'familyData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FamilyData _$FamilyDataFromJson(Map<String, dynamic> json) => FamilyData()
  ..status = json['status'] as num
  ..message = json['message'] as String
  ..data = (json['data'] as List<dynamic>)
      .map((e) => FamilyDetails.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$FamilyDataToJson(FamilyData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
