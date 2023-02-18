import 'package:json_annotation/json_annotation.dart';
import "addressDetails.dart";
part 'singleAddressData.g.dart';

@JsonSerializable()
class SingleAddressData {
  SingleAddressData();

  late num status;
  late String message;
  late AddressDetails data;
  
  factory SingleAddressData.fromJson(Map<String,dynamic> json) => _$SingleAddressDataFromJson(json);
  Map<String, dynamic> toJson() => _$SingleAddressDataToJson(this);
}
