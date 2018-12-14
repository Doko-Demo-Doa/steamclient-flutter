import 'package:dio/dio.dart';

class ApiClientSteamStore {
  static String baseUrl = 'https://store.steampowered.com/api/';
  static final defaultPort = 80;

  static Options options= new Options(
    baseUrl: baseUrl,
    connectTimeout: 5000,
    receiveTimeout: 3000
  );

  static Dio _httpClient = new Dio(options);

  static getUrl(endpoint) async {
    print(endpoint);
    Response response = await _httpClient.get(endpoint);
    print(response);
    return response;
  }
}