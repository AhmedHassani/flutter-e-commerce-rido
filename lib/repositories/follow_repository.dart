import 'package:flutter/cupertino.dart';
import 'package:rido/app_config.dart';
import 'package:rido/data_model/check_response_model.dart';
import 'package:rido/data_model/follow_model.dart';
import 'package:rido/data_model/is_follow_model.dart';
import 'package:rido/helpers/response_check.dart';
import 'package:rido/helpers/shared_value_helper.dart';
import 'package:http/http.dart' as http;

class FollowRepository{

  Future<dynamic> follow({@required sellerId})async{
    print(' follow ${ sellerId.toString()}');

    Uri url = Uri.parse("${AppConfig.BASE_URL}/seller/follow");
    print("url:" +url.toString());
    print("token:" +access_token.$);
    final response = await http.post(url,headers: {
      "Authorization": "Bearer ${access_token.$}",
      // "App-Language": app_language.$,
    },body: {
      "seller_id":sellerId.toString()
    });

    print('follow respine =${response.body} ');

    bool checkResult = ResponseCheck.apply(response.body);
    if(!checkResult)
      return responseCheckModelFromJson(response.body);
    return followModelResponseFromJson(response.body);


  }

  Future<dynamic> unFollow({@required sellerId})async{
    Uri url = Uri.parse("${AppConfig.BASE_URL}/seller/unfollow");
    print("url:" +url.toString());
    print("token:" +access_token.$);
    final response = await http.post(url,headers: {
      "Authorization": "Bearer ${access_token.$}",
      // "App-Language": app_language.$,
    },body: {
      "seller_id":sellerId.toString()
    });
    print('Unfollow respine =${response.body} ');


    bool checkResult = ResponseCheck.apply(response.body);
    if(!checkResult)
      return responseCheckModelFromJson(response.body);
    return followModelResponseFromJson(response.body);


  }
  Future<dynamic> isFollow({@required sellerId})async{
    print(' isfollopw ${ sellerId.toString()}');
    Uri url = Uri.parse("${AppConfig.BASE_URL}/seller/isfollow");
    print("url:" +url.toString());
    print("token:" +access_token.$);
    final response = await http.post(url,headers: {
      "Authorization": "Bearer ${access_token.$}",
      "App-Language": app_language.$,
    },body: {
      "seller_id":sellerId.toString()
    });

    print('isfollow respine =${response.body} ');


    return isfollowModelResponseFromJson(response.body);


  }
}