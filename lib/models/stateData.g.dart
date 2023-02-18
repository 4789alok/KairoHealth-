// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stateData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StateData _$StateDataFromJson(Map<String, dynamic> json) => StateData()
  ..status = json['status'] as num
  ..message = json['message'] as String
  ..data = (json['data'] as List<dynamic>)
      .map((e) => StateDetails.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$StateDataToJson(StateData instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
