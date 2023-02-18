// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messageData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageData _$MessageDataFromJson(Map<String, dynamic> json) => MessageData()
  ..status = json['status'] as num
  ..message = json['message'] as String;

Map<String, dynamic> _$MessageDataToJson(MessageData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
