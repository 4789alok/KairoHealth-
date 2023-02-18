// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginData _$LoginDataFromJson(Map<String, dynamic> json) => LoginData()
  ..status = json['status'] as num
  ..message = json['message'] as String
  ..data = json['data'] == null
      ? null
      : LoginDetails.fromJson(json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$LoginDataToJson(LoginData instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
