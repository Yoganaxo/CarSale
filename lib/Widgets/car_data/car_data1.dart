import 'dart:convert';

CarData1 CarData1FromJson(String str) => CarData1.fromjson(json.decode(str));

String CarData1Tojson(CarData1 data) => json.encode(data.toJson());

class CarData1 {
  CarData1({
    required this.brand,
    required this.carmake,
    required this.description,
    required this.year,
    required this.picture,
    required this.price,
    required this.isFavourite,
  });

  String brand;
  String carmake;
  String description;
  bool isFavourite;
  String year;
  String picture;
  String price;

  factory CarData1.fromjson(Map<String, dynamic> json) => CarData1(
        brand: json["brand"],
        carmake: json["carmake"],
        description: json["description"],
        year: json["year"],
        picture: json["image"],
        price: json["price"],
        isFavourite: false,
      );

  Map<String, dynamic> toJson() => {
        "brand": brand,
        "carmake": carmake,
        "picture": picture,
        "descrirtion": description,
        "isfavorite": isFavourite,
        "year": year,
        "price": price
      };
}
