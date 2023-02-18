// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescriptionListData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrescriptionListData _$PrescriptionListDataFromJson(
        Map<String, dynamic> json) =>
    PrescriptionListData()
      ..status = json['status'] as num
      ..message = json['message'] as String
      ..data = (json['data'] as List<dynamic>)
          .map((e) =>
              PrescriptionListDetails.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$PrescriptionListDataToJson(
        PrescriptionListData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
