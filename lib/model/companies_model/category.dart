class Category {
  late int id;
  late String category;
  late String price;
  late String companyId;
  late String percentage;

  Category(
      {required this.id,
        required this.category,
        required this.price,
        required this.companyId,
        required this.percentage});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['category'];
    price = json['price'];
    companyId = json['company_id'];
    percentage = json['percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category'] = this.category;
    data['price'] = this.price;
    data['company_id'] = this.companyId;
    data['percentage'] = this.percentage;
    return data;
  }
}