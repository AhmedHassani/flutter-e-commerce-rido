import 'package:rido/app_config.dart';
import 'package:http/http.dart' as http;
import 'package:rido/data_model/flash_deal_response.dart';
import 'package:rido/helpers/shared_value_helper.dart';

class FlashDealRepository {
  Future<FlashDealResponse> getFlashDeals() async {

    Uri url = Uri.parse("${AppConfig.BASE_URL}/flash-deals");
    print(url.toString());
    final response =
        await http.get(url,
            headers: {
          "App-Language": app_language.$,
        },
        );
    print(response.body.toString());

    return flashDealResponseFromJson(response.body.toString());
  }
}
