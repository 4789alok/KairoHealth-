import 'package:json_annotation/json_annotation.dart';

part 'addressDetails.g.dart';

@JsonSerializable()
class AddressDetails {
  AddressDetails();

  late num id;
  late String user_id;
  late String type;
  late String name;
  late String phone;
  late String address;
  late String landmark;
  late String city;
  late String state;
  late String pincode;
  late num status;
  late String created_at;
  late String updated_at;

  factory AddressDetails.fromJson(Map<String, dynamic> json) =>
      _$AddressDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$AddressDetailsToJson(this);
}
