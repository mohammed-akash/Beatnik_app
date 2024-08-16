import 'package:get_storage/get_storage.dart';

class BeatnikLocalStorage {
  // Private constructor for singleton pattern
  BeatnikLocalStorage._internal();

  // Singleton instance
  static final BeatnikLocalStorage instance = BeatnikLocalStorage._internal();

  // GetStorage instance
  final GetStorage _storage = GetStorage();

  // Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Generic method to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear all data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
