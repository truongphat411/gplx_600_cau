import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class LocalDatabse {
  factory LocalDatabse() {
    return instance;
  }

  LocalDatabse._internal();

  static final LocalDatabse instance = LocalDatabse._internal();

  static Database? _db;

  Future<Database> get db async {
    if(_db != null) {
      return _db!;
    }
    _db = await initDb();
    print('Database initDB');
    return _db!;
  }

  Future<Database> initDb() async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "gplx.db");

    // Check if the database exists
    var exists = await databaseExists(path);

    if (!exists) {
      // Should happen only the first time you launch your application
      print("Creating new copy from asset");

      // Make sure the parent directory exists
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

      // Copy from asset
      ByteData data = await rootBundle.load(url.join("assets", "gplx.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes written
      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      print("Opening existing database");
    }

    // open the database
    var db = await openDatabase(path);
    return db;
  }
}
