import 'package:getxapp/model/companies_model/body.dart';

class CompaniesModel {
  late int status;
  late String message;
  late List<Body> body;

  CompaniesModel(
      {required this.status, required this.message, required this.body});

  CompaniesModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['body'] != null) {
      body = <Body>[];
      json['body'].forEach((v) {
        body.add( Body.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.body != null) {
      data['body'] = this.body.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

