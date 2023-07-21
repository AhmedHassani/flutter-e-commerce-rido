// To parse this JSON data, do
//
//     final orderDetailResponse = orderDetailResponseFromJson(jsonString);
//https://app.quicktype.io/
import 'dart:convert';

import 'package:validators/sanitizers.dart';

FollowResponseModel followModelResponseFromJson(String str) =>
    FollowResponseModel.fromJson(json.decode(str));

class FollowResponseModel {
  final bool result;
  final String message;
  FollowResponseModel({
    this.result,
    this.message,
  });

  factory FollowResponseModel.fromJson(Map<String, dynamic> json) =>
      FollowResponseModel(message: json['message'], result: toBoolean(json['result'].toString()));
}
