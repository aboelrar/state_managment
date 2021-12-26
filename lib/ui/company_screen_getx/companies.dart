import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/controller_getx/companies_controller.dart';
import 'package:getxapp/component/company_item.dart';

class Companies extends GetView<CompaniesController> {
  const Companies({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _getBody(),
    );
  }

  Widget _getBody() {
    return Obx(() => controller.companies.isEmpty
        ? Container(
            color: Colors.red,
          )
        : ListView.builder(
            itemCount: controller.body.length,
            itemBuilder: (context, i) {
              return CompanyItem(controller.body[i].picture,
                  controller.body[i].username, controller.body[i].phone);
            }));
  }
}
