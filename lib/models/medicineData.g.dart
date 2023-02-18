// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicineData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicineData _$MedicineDataFromJson(Map<String, dynamic> json) => MedicineData()
  ..status = json['status'] as num
  ..message = json['message'] as String
  ..data = (json['data'] as List<dynamic>)
      .map((e) => MedicineDetails.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$MedicineDataToJson(MedicineData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
