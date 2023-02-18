// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData()
  ..status = json['status'] as num
  ..message = json['message'] as String
  ..data = UserDetails.fromJson(json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
