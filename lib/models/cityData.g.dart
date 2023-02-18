// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cityData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityData _$CityDataFromJson(Map<String, dynamic> json) => CityData()
  ..status = json['status'] as num
  ..message = json['message'] as String
  ..data = (json['data'] as List<dynamic>)
      .map((e) => CityDetails.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$CityDataToJson(CityData instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
