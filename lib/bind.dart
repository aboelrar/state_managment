import 'package:get/get.dart';
import 'package:getxapp/controller_getx/companies_controller.dart';

class Bind extends Bindings {
  @override
  void dependencies() {
    Get.put(CompaniesController());
  }
}
