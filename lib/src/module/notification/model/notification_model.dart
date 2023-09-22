class NotificationModel {
  int? id;
  String? title;
  String? body;
  String? payload;
  String? readAt;
  String? createdAt;
  String? updatedAt;
  int? userId;

  NotificationModel(
      {this.id,
      this.title,
      this.body,
      this.payload,
      this.readAt,
      this.createdAt,
      this.updatedAt,
      this.userId});

  NotificationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    body = json['body'];
    payload = json['payload'];
    readAt = json['readAt'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;
    data['payload'] = payload;
    data['readAt'] = readAt;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['userId'] = userId;
    return data;
  }
}
