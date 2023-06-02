


class ProfileModel {
  final String? title;
  final String? recordType;
  final double? price;
  List<ImagesModel>? images;
  ProfileModel({
    this.images,
    this.title,
    this.recordType,
    this.price,
  });
}

class ImagesModel {
  final String? gallary;

  ImagesModel({
    this.gallary,
  });
}
