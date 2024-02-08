import 'dart:io';
import 'package:hive/hive.dart';

class CachingService {
  final Directory directory;
  const CachingService(this.directory);

  static const _boxName = 'movie_tickets_storage';

  // Initialize Hive box
  Future<void> init() async {
    Hive.init(directory.path);
    await Hive.openBox(_boxName);
  }

  // Get reference to the Hive box
  Box getBox() {
    return Hive.box(_boxName);
  }

  // Insert data into Hive
  Future<void> insertData(String key, dynamic value) async {
    final box = getBox();
    await box.put(key, value);
  }

  // Get data from Hive
  dynamic getData(String key) {
    final box = getBox();
    return box.get(key);
  }

  // Delete data from Hive
  Future<void> deleteData(String key) async {
    final box = getBox();
    await box.delete(key);
  }

  // Close the Hive box
  Future<void> close() async {
    await Hive.close();
  }
}
