import '../../home/models/product/product_model.dart';

abstract class FavouriteBase {
  Future<List<ProductModel>> getFavouritsList({int page = 0});
  Future<void> addToFavourite(int id);
  Future<void> removeFavourite(int id);
}
