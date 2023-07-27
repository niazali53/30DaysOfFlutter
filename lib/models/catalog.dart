class MyCatalog {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  MyCatalog({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

  final products = [
    MyCatalog(
      id: "Codepur001",
      name: "iPhone 12 pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image: "https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-12-pro--.jpg",
    ),
  ];
}
