// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginDetails _$LoginDetailsFromJson(Map<String, dynamic> json) => LoginDetails()
  ..id = json['id'] as num?
  ..name = json['name'] as String?
  ..email = json['email'] as String?
  ..photo = json['photo'] as String?
  ..phone = json['phone'] as String?
  ..token = json['token'] as String?
  ..role = json['role'] as num?;

Map<String, dynamic> _$LoginDetailsToJson(LoginDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'photo': instance.photo,
      'phone': instance.phone,
      'token': instance.token,
      'role': instance.role,
    };
