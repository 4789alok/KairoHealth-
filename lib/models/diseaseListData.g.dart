// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diseaseListData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiseaseListData _$DiseaseListDataFromJson(Map<String, dynamic> json) =>
    DiseaseListData()
      ..status = json['status'] as num
      ..message = json['message'] as String
      ..data = (json['data'] as List<dynamic>)
          .map((e) => DiseaseListDetails.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DiseaseListDataToJson(DiseaseListData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
