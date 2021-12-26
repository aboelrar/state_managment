import 'package:get/get.dart';
import 'package:getxapp/main.dart';
import 'package:getxapp/model/companies_model/body.dart';
import 'package:getxapp/model/companies_model/companies_model.dart';
import 'package:getxapp/utils/constants/api_client.dart';

class CompaniesController extends GetxController {
  List<CompaniesModel> companies = <CompaniesModel>[].obs;
  List<Body> body = <Body>[].obs;

  @override
  void onInit() {
    super.onInit();

    apiRouter.getData(ApiClient.Companies).then((value) {
      companies.add(CompaniesModel.fromJson(value));

      for (int i = 0; i < companies.length; i++) {
        body.add(companies[0].body[i]);
      }
    });

  }
}
