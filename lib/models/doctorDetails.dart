import 'package:json_annotation/json_annotation.dart';

part 'doctorDetails.g.dart';

@JsonSerializable()
class DoctorDetails {
  DoctorDetails();

  late num? id;
  late String? name;
  late String? photo;
  late String? specialization;
  late String? experience;
  late String? post;
  late String? fee;
  late String? address;

  factory DoctorDetails.fromJson(Map<String, dynamic> json) =>
      _$DoctorDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$DoctorDetailsToJson(this);
}
