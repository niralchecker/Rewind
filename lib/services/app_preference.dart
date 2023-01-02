import 'package:get_storage/get_storage.dart';

class AppSharedPreferences {
  const AppSharedPreferences._();

  static dynamic getStringFromLocalStorage(String key,
          {String container = 'GetStorage'}) =>
      GetStorage(container).read(key);

  static dynamic saveStringToLocalStorage(
    String key,
    dynamic value, {
    String container = 'GetStorage',
  }) =>
      GetStorage(container).write(key, value);

  static Future<void> removeAllString({String container = 'GetStorage'}) async {
    await GetStorage(container).erase();
  }

  static void removeStringFromLocalStorage(String key,
      {String container = 'GetStorage'}) {
    GetStorage(container).remove(key);
  }
}
