import 'package:rido/app_config.dart';
import 'package:rido/data_model/addons_response.dart';
import 'package:rido/data_model/customer_package_response.dart';
import 'package:http/http.dart' as http;

class CustomerPackageRepository{
Future<CustomerPackageResponse> getList() async{
  Uri url = Uri.parse('${AppConfig.BASE_URL}/customer-packages');

  final response = await http.get(url);
  //print("adons ${response.body}");
  return customerPackageResponseFromJson(response.body);
}
}