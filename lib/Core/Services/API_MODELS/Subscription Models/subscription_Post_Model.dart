// ignore_for_file: file_names

class SubscriptionPostModel {
  String? title;
  String? description;
  int? price;
  String? id;
  // String? createdAt;
  // String? updatedAt;

  SubscriptionPostModel({
    this.title,
    this.description,
    this.price,
    this.id,
    // this.createdAt,
    // this.updatedAt
  });

  SubscriptionPostModel.fromJson(Map<String, dynamic> json) {
    title = json['packageTitle'];
    description = json['description'];
    price = json['price'];
    id = json['_id'];
    // createdAt = json['createdAt'];
    // updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['packageTitle'] = title;
    data['description'] = description;
    data['price'] = price;
    data['_id'] = id;
    // data['createdAt'] = this.createdAt;
    // data['updatedAt'] = this.updatedAt;
    return data;
  }
}
