import 'package:dio/dio.dart';

class ApiClientSteamStore {
  static String baseUrl = 'https://store.steampowered.com/api/';
  static final defaultPort = 80;

  static BaseOptions options = new BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: 5000,
    receiveTimeout: 3000
  );

  static Dio _httpClient = new Dio(options);

  static getUrl(endpoint) async {
    Response response = await _httpClient.get(endpoint);
    return response;
  }
}