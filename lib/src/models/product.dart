import 'package:dart_json_mapper/json_mapper.dart';

enum Type {
  game
}

class Product {
  String appName;
  String type;
  int steamAppId;
  bool isFree;
  String detailedDescription;
  String aboutTheGame;
  String shortDescription;

  Product.fromJson(Map<String, dynamic> json):
    appName = json['app_name'],
    type = json['type'],
    steamAppId = json['steam_app_id'],
    isFree = json['is_free'],
    detailedDescription = json['detailed_description'],
    aboutTheGame = json['about_the_game'],
    shortDescription = json['short_description'];

  Map<String, dynamic> toJson() => {
    'app_name': appName,
    'type': type,
    'steam_app_id': steamAppId,
    'is_free': isFree,
    'detailed_description': detailedDescription,
    'about_the_game': aboutTheGame,
    'short_description': shortDescription
  };
}
