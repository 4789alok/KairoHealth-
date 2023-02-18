import 'package:json_annotation/json_annotation.dart';
import "stateDetails.dart";
part 'stateData.g.dart';

@JsonSerializable()
class StateData {
  StateData();

  late num status;
  late String message;
  late List<StateDetails> data;
  
  factory StateData.fromJson(Map<String,dynamic> json) => _$StateDataFromJson(json);
  Map<String, dynamic> toJson() => _$StateDataToJson(this);
}
