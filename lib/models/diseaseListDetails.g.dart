// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diseaseListDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiseaseListDetails _$DiseaseListDetailsFromJson(Map<String, dynamic> json) =>
    DiseaseListDetails()
      ..id = json['id'] as num?
      ..specialization = json['specialization'] as String?
      ..disease = json['disease'] as String?
      ..photo = json['photo'] as String?
      ..description = json['description'] as String?;

Map<String, dynamic> _$DiseaseListDetailsToJson(DiseaseListDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'specialization': instance.specialization,
      'disease': instance.disease,
      'photo': instance.photo,
      'description': instance.description,
    };
