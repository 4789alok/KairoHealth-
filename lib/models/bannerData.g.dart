// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bannerData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerData _$BannerDataFromJson(Map<String, dynamic> json) => BannerData()
  ..status = json['status'] as num
  ..message = json['message'] as String
  ..data = json['data'] == null
      ? null
      : (json['data'] as List<dynamic>)
          .map((e) => BannerDetails.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$BannerDataToJson(BannerData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
