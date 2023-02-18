// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'singleAddressData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleAddressData _$SingleAddressDataFromJson(Map<String, dynamic> json) =>
    SingleAddressData()
      ..status = json['status'] as num
      ..message = json['message'] as String
      ..data = AddressDetails.fromJson(json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$SingleAddressDataToJson(SingleAddressData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
