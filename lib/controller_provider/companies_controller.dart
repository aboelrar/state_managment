import 'package:flutter/cupertino.dart';
import 'package:getxapp/main.dart';
import 'package:getxapp/model/companies_model/body.dart';
import 'package:getxapp/model/companies_model/companies_model.dart';
import 'package:getxapp/utils/constants/api_client.dart';

class CompaniesController extends ChangeNotifier{
  List<CompaniesModel> companies = [];
  List<Body> body = [];

  fetchData()
  {
    apiRouter.getData(ApiClient.Companies).then((value) {
      companies.add(CompaniesModel.fromJson(value));
      print("size${companies.length}");

      for (int i = 0; i < companies.length; i++) {
        body.add(companies[0].body[i]);

      }
      notifyListeners();
    });



  }

}