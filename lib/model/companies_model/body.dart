import 'package:getxapp/model/companies_model/attatchment.dart';
import 'package:getxapp/model/companies_model/category.dart';

class Body {
  late int id;
  late String username;
  late Null birthdate;
  late Null gender;
  late String phone;
  late String email;
  late String suspend;
  late String realPassword;
  late Null profitShare;
  late Null tax;
  late Null description;
  late String picture;
  late String roleId;
  late String token;
  late Null commercialReg;
  late String isDelete;
  late List<Category> category;
  late Attachment attachment;
  late var country;

  Body(
      {required this.id,
        required this.username,
        this.country,
        this.birthdate,
        this.gender,
        required this.phone,
        required this.email,
        required this.suspend,
        required this.realPassword,
        this.profitShare,
        this.tax,
        this.description,
        required this.picture,
        required this.roleId,
        required this.token,
        this.commercialReg,
        required this.isDelete,
        required this.category,
        required this.attachment});

  Body.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    country = json['country'];
    birthdate = json['birthdate'];
    gender = json['gender'];
    phone = json['phone'];
    email = json['email'];
    suspend = json['suspend'];
    realPassword = json['real_password'];
    profitShare = json['profit_share'];
    tax = json['tax'];
    description = json['description'];
    picture = json['picture'];
    roleId = json['role_id'];
    token = json['token'];
    commercialReg = json['commercial_reg'];
    isDelete = json['is_delete'];
    if (json['category'] != null) {
      category = <Category>[];
      json['category'].forEach((v) {
        category.add(new Category.fromJson(v));
      });
    }
    attachment = (json['attachment'] != null
        ? new Attachment.fromJson(json['attachment'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['country'] = this.country;
    data['birthdate'] = this.birthdate;
    data['gender'] = this.gender;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['suspend'] = this.suspend;
    data['real_password'] = this.realPassword;
    data['profit_share'] = this.profitShare;
    data['tax'] = this.tax;
    data['description'] = this.description;
    data['picture'] = this.picture;
    data['role_id'] = this.roleId;
    data['token'] = this.token;
    data['commercial_reg'] = this.commercialReg;
    data['is_delete'] = this.isDelete;
    if (this.category != null) {
      data['category'] = this.category.map((v) => v.toJson()).toList();
    }
    if (this.attachment != null) {
      data['attachment'] = this.attachment.toJson();
    }
    return data;
  }
}