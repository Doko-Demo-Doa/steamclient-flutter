import 'package:steamclient/src/api/factory_steamstore.dart';

class ApiProduct {
  static void getLatestProduct() {
    ApiClientSteamStore.getUrl('appdetails?appids=57690');
  }
}