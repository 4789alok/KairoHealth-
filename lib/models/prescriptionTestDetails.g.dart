// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescriptionTestDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrescriptionTestDetails _$PrescriptionTestDetailsFromJson(
        Map<String, dynamic> json) =>
    PrescriptionTestDetails()
      ..test_Titel = json['test_Titel'] as String?
      ..urin = json['urin'] as bool?
      ..Blood = json['Blood'] as bool?;

Map<String, dynamic> _$PrescriptionTestDetailsToJson(
        PrescriptionTestDetails instance) =>
    <String, dynamic>{
      'test_Titel': instance.test_Titel,
      'urin': instance.urin,
      'Blood': instance.Blood,
    };
