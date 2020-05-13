import 'bestseller_items.dart';
import 'meats_items.dart';
import 'milk_items.dart';
import 'snacks_items.dart';
import 'veggies_items.dart';
import 'package:slnproject/reusable/productinfo.dart';
import 'package:slnproject/reusable/errorpage.dart';

BestSellingItems bestSellingItems = BestSellingItems();
MeatItems meatItems = MeatItems();
VeggieItems veggieItems = VeggieItems();
MilkPro milkPro = MilkPro();
SnackItems snackItems = SnackItems();

List storage = [bestSellingItems, meatItems, milkPro, veggieItems, snackItems];

class SearchItems {
  List names = [];
  List quantity = [];
  List pice = [];
  List images = [];
  void Create() {
    for (int i = 0; i < 5; i++) {
      names.addAll(storage[i].names);
      quantity.addAll(storage[i].quantity);
      pice.addAll(storage[i].pice);
      images.addAll(storage[i].images);
    }
  }

  dynamic FindItem(String name) {
    Create();
    for (int i = 0; i < 22; i++) {
      print(names[i]);
      print("Action");
      if (name.toLowerCase() == (names[i]).toString().toLowerCase()) {
        print("Working");
        return ProductInfo(
          name: names[i],
          quantity: quantity[i],
          price: pice[i],
          image: images[i],
        );
      }
    }
//    return ProductInfo(
//      name: 'error',
//      quantity: 'error',
//      price: 'error',
//      image: 'error',
//    );
    return ErrorPage();
  }
}
