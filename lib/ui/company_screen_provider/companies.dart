import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getxapp/component/company_item.dart';
import 'package:getxapp/controller_provider/companies_controller.dart';
import 'package:provider/provider.dart';

class Companies extends StatefulWidget {
  const Companies({Key? key}) : super(key: key);

  @override
  State<Companies> createState() => _CompaniesState();
}

class _CompaniesState extends State<Companies> {
  CompaniesController? companiesController;

  @override
  Widget build(BuildContext context) {
    companiesController =
        Provider.of<CompaniesController>(context, listen: false);
    companiesController!.fetchData();

    // TODO: implement build
    return _getBody();
  }

  Widget _getBody() {
    // ignore: deprecated_member_use
    return Scaffold(
      body: Consumer<CompaniesController>(
        builder: (context, data, _) {
          return ListView.builder(
              itemCount: data.body.length,
              itemBuilder: (context, i) {
                return CompanyItem(data.body[i].picture, data.body[i].username,
                    data.body[i].phone);
              });
        },
      ),
    );
  }
}
