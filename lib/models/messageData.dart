import 'package:json_annotation/json_annotation.dart';

part 'messageData.g.dart';

@JsonSerializable()
class MessageData {
  MessageData();

  late num status;
  late String message;
  
  factory MessageData.fromJson(Map<String,dynamic> json) => _$MessageDataFromJson(json);
  Map<String, dynamic> toJson() => _$MessageDataToJson(this);
}
