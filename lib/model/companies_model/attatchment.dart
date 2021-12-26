class Attachment {
  late int id;
  late String name;
  late String path;
  late Null description;
  late String type;
  late String extension;

  Attachment(
      {required this.id,
        required this.name,
        required this.path,
        required this.description,
        required this.type,
        required this.extension});

  Attachment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    path = json['path'];
    description = json['description'];
    type = json['type'];
    extension = json['extension'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['path'] = this.path;
    data['description'] = this.description;
    data['type'] = this.type;
    data['extension'] = this.extension;
    return data;
  }
}