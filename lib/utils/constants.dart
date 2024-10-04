
import 'package:three_monkeys/utils/product.dart';

import 'category.dart';

final List<Category> categories = [
  const Category(id: 1, name: "Fast Food", asset: "images/category/fastfood.png"),
  const Category(id: 2, name: "Cocktail", asset: "images/category/cocktail.png"),
  const Category(id: 3, name: "Steaks", asset: "images/category/steak.png"),
  const Category(id: 4, name: "Breakfast", asset: "images/category/breakfast.png"),
];

final List<Product> products=[
  const Product(2, "Fillet", "https://cloud.appwrite.io/v1/storage/buckets/66fd760000255c36b00c/files/66fd78a1000b7cce968a/view?project=66fd739a003a2d8c0697&project=66fd739a003a2d8c0697&mode=admin", "15 mins"),
  const Product(3, "Buffalo Wings", "https://cloud.appwrite.io/v1/storage/buckets/66fd760000255c36b00c/files/66fd7835002c5cb18689/view?project=66fd739a003a2d8c0697&project=66fd739a003a2d8c0697&mode=admin", "4 mins"),
  const Product(4, "Sandwich", "https://cloud.appwrite.io/v1/storage/buckets/66fd760000255c36b00c/files/66fd76cb0034e15b8972/view?project=66fd739a003a2d8c0697&project=66fd739a003a2d8c0697&mode=admin", "6 mins"),
  const Product(1, "Pizza", "https://cloud.appwrite.io/v1/storage/buckets/66fd760000255c36b00c/files/66fd7a850013ede24f2e/view?project=66fd739a003a2d8c0697&mode=admin", "4 mins"),

];