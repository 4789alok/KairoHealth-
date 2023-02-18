// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) => UserDetails()
  ..id = json['id'] as num?
  ..name = json['name'] as String?
  ..email = json['email'] as String?
  ..photo = json['photo'] as String?
  ..phone = json['phone'] as String?
  ..role = json['role'] as num?;

Map<String, dynamic> _$UserDetailsToJson(UserDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'photo': instance.photo,
      'phone': instance.phone,
      'role': instance.role,
    };
