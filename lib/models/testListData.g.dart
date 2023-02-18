// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testListData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestListData _$TestListDataFromJson(Map<String, dynamic> json) => TestListData()
  ..status = json['status'] as num
  ..message = json['message'] as String
  ..data = (json['data'] as List<dynamic>)
      .map((e) => TestListDetails.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$TestListDataToJson(TestListData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
