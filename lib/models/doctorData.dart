import 'package:json_annotation/json_annotation.dart';
import "doctorDetails.dart";
part 'doctorData.g.dart';

@JsonSerializable()
class DoctorData {
  DoctorData();

  late num status;
  late String message;
  late DoctorDetails data;
  
  factory DoctorData.fromJson(Map<String,dynamic> json) => _$DoctorDataFromJson(json);
  Map<String, dynamic> toJson() => _$DoctorDataToJson(this);
}
