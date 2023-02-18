import 'package:json_annotation/json_annotation.dart';

part 'medicineDetails.g.dart';

@JsonSerializable()
class MedicineDetails {
  MedicineDetails();

  late num? id;
  late String? product;
  late String? photo;
  late String? packing;
  late String? brand_id;
  late String? category_id;
  late String? salt;
  late String? hsn;
  late num? local_tax;
  late num? central_tax;
  late num? cgst;
  late num? sgst;
  late num? igst;
  late num? mrp;
  late num? p_rate;
  late num? s_rate;
  late num? d_rate;
  late String? expiry_date;
  late String? minimum_qty;
  late num? status;
  late String? created_at;
  late String? updated_at;

  factory MedicineDetails.fromJson(Map<String, dynamic> json) =>
      _$MedicineDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$MedicineDetailsToJson(this);
}
