import 'dart:convert' as convert;
import 'package:getxapp/model/companies_model/companies_model.dart';
import 'package:http/http.dart' as http;

class ApiRouter {
  List<CompaniesModel> companies = [];

  //get data from server
  Future<dynamic> getData(url) async {
    var uri = Uri.parse(url);
    var response = await http.get(uri);
    Map<String, dynamic> data = convert.jsonDecode(response.body);
    return data;
  }

  //post data to server
  Future<dynamic> postData(url, Map map) async {
    var response = await http.post(url, body: map);
    var data = convert.jsonDecode(response.body);
    return data;
  }
}
