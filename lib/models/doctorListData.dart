import 'package:json_annotation/json_annotation.dart';
import "doctorDetails.dart";
part 'doctorListData.g.dart';

@JsonSerializable()
class DoctorListData {
  DoctorListData();

  late num status;
  late String message;
  late List<DoctorDetails> data;
  
  factory DoctorListData.fromJson(Map<String,dynamic> json) => _$DoctorListDataFromJson(json);
  Map<String, dynamic> toJson() => _$DoctorListDataToJson(this);
}
