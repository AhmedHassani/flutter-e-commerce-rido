// To parse this JSON data, do
//
//     final orderDetailResponse = orderDetailResponseFromJson(jsonString);
//https://app.quicktype.io/
import 'dart:convert';

import 'package:validators/sanitizers.dart';

IsFollowResponseModel isfollowModelResponseFromJson(String str) =>
    IsFollowResponseModel.fromJson(json.decode(str));

class IsFollowResponseModel {
  final bool result;
  final String message;
  IsFollowResponseModel({
    this.result,
    this.message,
  });

  factory IsFollowResponseModel.fromJson(Map<String, dynamic> json) =>
      IsFollowResponseModel(
          message: json['message'],
          result:json['result'] == 'no' ?false:true);
}
