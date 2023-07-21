import 'package:rido/app_config.dart';
import 'package:rido/data_model/carriers_response.dart';
import 'package:rido/data_model/check_response_model.dart';
import 'package:rido/data_model/delivery_info_response.dart';
import 'package:rido/helpers/response_check.dart';
import 'package:rido/helpers/shared_value_helper.dart';
import 'package:http/http.dart' as http;

class ShippingRepository{
  Future<dynamic> getDeliveryInfo() async {
    Uri url =
    Uri.parse("${AppConfig.BASE_URL}/delivery-info");
    print(url.toString());

    final response = await http.get(
      url,
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${access_token.$}",
        "App-Language": app_language.$,
      },
    );

    bool checkResult = ResponseCheck.apply(response.body);

    if(!checkResult)
      return responseCheckModelFromJson(response.body);


    return deliveryInfoResponseFromJson(response.body);
  }

}