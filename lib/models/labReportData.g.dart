// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'labReportData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LabReportData _$LabReportDataFromJson(Map<String, dynamic> json) =>
    LabReportData()
      ..status = json['status'] as num
      ..message = json['message'] as String
      ..data = (json['data'] as List<dynamic>)
          .map((e) => LabReportDetails.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$LabReportDataToJson(LabReportData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
