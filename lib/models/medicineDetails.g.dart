// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicineDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicineDetails _$MedicineDetailsFromJson(Map<String, dynamic> json) =>
    MedicineDetails()
      ..id = json['id'] as num?
      ..product = json['product'] as String?
      ..photo = json['photo'] as String?
      ..packing = json['packing'] as String?
      ..brand_id = json['brand_id'] as String?
      ..category_id = json['category_id'] as String?
      ..salt = json['salt'] as String?
      ..hsn = json['hsn'] as String?
      ..local_tax = json['local_tax'] as num?
      ..central_tax = json['central_tax'] as num?
      ..cgst = json['cgst'] as num?
      ..sgst = json['sgst'] as num?
      ..igst = json['igst'] as num?
      ..mrp = json['mrp'] as num?
      ..p_rate = json['p_rate'] as num?
      ..s_rate = json['s_rate'] as num?
      ..d_rate = json['d_rate'] as num?
      ..expiry_date = json['expiry_date'] as String?
      ..minimum_qty = json['minimum_qty'] as String?
      ..status = json['status'] as num?
      ..created_at = json['created_at'] as String?
      ..updated_at = json['updated_at'] as String?;

Map<String, dynamic> _$MedicineDetailsToJson(MedicineDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'photo': instance.photo,
      'packing': instance.packing,
      'brand_id': instance.brand_id,
      'category_id': instance.category_id,
      'salt': instance.salt,
      'hsn': instance.hsn,
      'local_tax': instance.local_tax,
      'central_tax': instance.central_tax,
      'cgst': instance.cgst,
      'sgst': instance.sgst,
      'igst': instance.igst,
      'mrp': instance.mrp,
      'p_rate': instance.p_rate,
      's_rate': instance.s_rate,
      'd_rate': instance.d_rate,
      'expiry_date': instance.expiry_date,
      'minimum_qty': instance.minimum_qty,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
