import 'package:get_it/get_it.dart';
import 'package:steamclient/api/api_product.dart';
import './services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());

  locator.registerLazySingleton(() => ApiProduct());
}
