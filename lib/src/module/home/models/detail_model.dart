class DetailModel {
  String? title;
  String? recordType;
  double? price;
  String? description;
  bool? isFav;
  double? delivery;
  List<ImagesModel>? images;
  DetailModel(
      {this.images,
      this.title,
      this.recordType,
      this.description,
      this.price,
      this.isFav, 
      this.delivery});
}

class ImagesModel {
  String? gallary;
  double? eachPrice;
  String? title;
  List<SizeModel>? sized;
  ImagesModel({
    this.gallary,
    this.eachPrice,
    this.sized,
    this.title,
  });
}

class SizeModel {
  String? sized;
  SizeModel({
    this.sized,
  });
}
