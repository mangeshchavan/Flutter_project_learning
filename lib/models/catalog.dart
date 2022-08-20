class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "IPhone 12",
        desc: "Apple phone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://img.giznext.com/assets/model/2/96/apple-iphone-12-986bf5e98daf0059117d2f08f5a5e7.jpg"),
  ];
  static Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  // Get Item by position
  static Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        price: map["price"],
        desc: map["desc"],
        color: map["color"],
        image: map["image"]);
  }
  toMap() => {
        "id": id,
        "name": name,
        "price": price,
        "desc": desc,
        "color": color,
        "image": image
      };
}
// id: 1,
// name: "iPhone 12 Pro",
// desc: "Apple iPhone 12th generation",
// price: 999,
// color: "#33505a",
// image:
//     "https://api.happythoughts.in/assets/61cc6c94-192f-4044-ac4e-a0bb8a55e831"
