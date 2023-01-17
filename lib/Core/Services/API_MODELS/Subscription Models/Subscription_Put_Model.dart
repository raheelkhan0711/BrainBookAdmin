// ignore_for_file: file_names

class SubscriptionPutModel {
  String? id;
  String? title;
  int? price;
  String? description;
  // String? createdAt;
  // String? updatedAt;

  SubscriptionPutModel({
    this.id,
    this.title,
    this.price,
    this.description,
    // this.createdAt,
    // this.updatedAt
  });

  SubscriptionPutModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    title = json['packageTitle'];
    price = json['price'];
    description = json['description'];
    // createdAt = json['createdAt'];
    // updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = id;
    data['packageTitle'] = title;
    data['price'] = price;
    data['description'] = description;
    // data['createdAt'] = this.createdAt;
    // data['updatedAt'] = this.updatedAt;
    return data;
  }
}
