class Shoe {
  final String name;
  final int price;
  final String imgPath;
  final String description;

  Shoe({
    required this.name,
    required this.price,
    required this.imgPath,
    required this.description,
  });
}

List<Shoe> shoes = [
  Shoe(
    name: "Air Jordan 1 Mid SE",
    price: 234,
    description: dummyText,
    imgPath: "assets/images/Air_Jordan_1_mid_SE.png",
  ),
  Shoe(
    name: "Air Jordan 1 Mid SE",
    price: 234,
    description: dummyText,
    imgPath: "assets/images/Air_Jordan1midSE.png",
  ),
  Shoe(
    name: "Nike Air Force 107",
    price: 234,
    description: dummyText,
    imgPath: "assets/images/Nike_Air_Force107.png",
  ),
  Shoe(
    name: "Nike Air Force 107-LV-8",
    price: 234,
    description: dummyText,
    imgPath: "assets/images/Nike_air_Force107LV8.png",
  ),
  Shoe(
    name: "Nike Air Max",
    price: 234,
    description: dummyText,
    imgPath: "assets/images/Nike_air_max.png",
  ),
  Shoe(
    name: "Nike Invincible",
    price: 234,
    description: dummyText,
    imgPath: "assets/images/Nike_Invincible.png",
  ),
  Shoe(
    name: "Nike Free Metcon 5",
    price: 234,
    description: dummyText,
    imgPath: "assets/images/Nike_Free_Metcon5.png",
  ),
  
  ];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
