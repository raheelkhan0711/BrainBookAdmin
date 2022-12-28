// ignore_for_file: file_names

class SubscriptionGetModel {
  String? id;
  String? packageTitle;
  int? price;
  String? description;
  // String? createdAt;
  // String? updatedAt;

  SubscriptionGetModel({
    this.id,
    this.packageTitle,
    this.price,
    this.description,
    // this.createdAt,
    // this.updatedAt
  });

  SubscriptionGetModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    packageTitle = json['packageTitle'];
    price = json['price'];
    description = json['description'];
    // createdAt = json['createdAt'];
    // updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = id;
    data['packageTitle'] = packageTitle;
    data['price'] = price;
    data['description'] = description;
    // data['createdAt'] = this.createdAt;
    // data['updatedAt'] = this.updatedAt;
    return data;
  }
}
