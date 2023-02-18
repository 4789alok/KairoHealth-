// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addressDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressDetails _$AddressDetailsFromJson(Map<String, dynamic> json) =>
    AddressDetails()
      ..id = json['id'] as num
      ..user_id = json['user_id'] as String
      ..type = json['type'] as String
      ..name = json['name'] as String
      ..phone = json['phone'] as String
      ..address = json['address'] as String
      ..landmark = json['landmark'] as String
      ..city = json['city'] as String
      ..state = json['state'] as String
      ..pincode = json['pincode'] as String
      ..status = json['status'] as num
      ..created_at = json['created_at'] as String
      ..updated_at = json['updated_at'] as String;

Map<String, dynamic> _$AddressDetailsToJson(AddressDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'type': instance.type,
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'landmark': instance.landmark,
      'city': instance.city,
      'state': instance.state,
      'pincode': instance.pincode,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
