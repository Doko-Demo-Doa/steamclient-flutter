import 'package:steamclient/api/factory_steamstore.dart';

class ApiProduct {
  static void getLatestProduct() {
    ApiClientSteamStore.getUrl('appdetails?appids=57690');
  }

  static void getFeaturedProducts() {
    
  }
}