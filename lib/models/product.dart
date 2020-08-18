class Product {
  String appName;
  String type;
  int steamAppId;
  int price;
  bool isFree;
  String detailedDescription;
  String aboutTheGame;
  String shortDescription;
  String spotlightImage;

  Product();

  Product.fromJson(Map<String, dynamic> json):
    appName = json['app_name'],
    type = json['type'],
    steamAppId = json['steam_app_id'],
    price = json['price'],
    isFree = json['is_free'],
    detailedDescription = json['detailed_description'],
    aboutTheGame = json['about_the_game'],
    shortDescription = json['short_description'],
    spotlightImage = json['spotlight_image'];

  Map<String, dynamic> toJson() => {
    'app_name': appName,
    'type': type,
    'steam_app_id': steamAppId,
    'price': price,
    'is_free': isFree,
    'detailed_description': detailedDescription,
    'about_the_game': aboutTheGame,
    'short_description': shortDescription,
    'spotlight_image': spotlightImage
  };
}
