import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

@lazySingleton
class DatabaseHelper {
  static Database? _db;
  Database? get instance => _db;

  Future<Database> get database async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDb();
    print('Database initDB');
    return _db!;
  }

  Future<Database> initDb() async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "gplx.db");

    var db = await openDatabase(
      path,
      version: 1,
      onCreate: onCreate,
    );
    return db;
  }

  Future<void> onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE TABLE_NOTICE_BOARD (
        ID INTEGER PRIMARY KEY,
        Type_ID INTEGER,
        Name TEXT,
        NameEN TEXT,
        ShortName TEXT,
        Description TEXT,
        DisplayOrder TEXT,
        Detail TEXT,
        Icon TEXT,
        UpdateDay TEXT,
        isDelete INTEGER
      )
    ''');

    await db.execute('''
      CREATE TABLE TABLE_NOTICE_BOARD_TYPE (
        Type_ID INTEGER PRIMARY KEY,
        Type_Name TEXT,
        Icon TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE ZLICENSE (
        Z_PK INTEGER PRIMARY KEY,
        Z_ENT INTEGER,
        Z_OPT INTEGER,
        ZCONTENT TEXT,
        ZDESC TEXT,
        ZDESC_EN TEXT,
        ZEXAMPERIOD REAL,
        ZNAME TEXT,
        ZNUMBEROFQUESTION INTEGER,
        ZNUMBEROFTEST INTEGER,
        ZPASSSCORE INTEGER
      )
    ''');

    await db.execute('''
      CREATE TABLE ZQUESTION (
        Z_PK INTEGER PRIMARY KEY,
        ZQUESTIONCONTENT TEXT,
        ZIMAGE TEXT,
        ZOPTION1 TEXT,
        ZOPTION2 TEXT,
        ZOPTION3 TEXT,
        ZOPTION4 TEXT,
        ZANSWERIMG TEXT,
        ZANSWERDESC TEXT,
        ZCORRECT INTEGER,
        ZQUESTIONTYPE INTEGER,
        ZLEARNED INTEGER,
        ZMARKED INTEGER,
        ZWRONG INTEGER,
        INGROUP_A1 INTEGER,
        INGROUP_A INTEGER,
        INGROUP_B1 INTEGER,
        INGROUP_B INTEGER,
        DIGROUPA1 TEXT,
        DIGROUPB1 TEXT,
        INGROUP_DTOE INTEGER,
        ZQUESTIONDIE TEXT,
        Z_ENT INTEGER,
        ZLATEST INTEGER,
        REZ1 TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE ZQUESTIONTYPE (
        Z_PK INTEGER PRIMARY KEY,
        Z_ENT INTEGER,
        Z_OPT INTEGER,
        ZID TEXT,
        ZTYPE_NAME TEXT,
        ZDESC TEXT,
        ZCURRENT_INDEX INTEGER
      )
    ''');

    await db.execute('''
      CREATE TABLE ZTEST (
        IDTEST INTEGER PRIMARY KEY,
        NAME_TEST INTEGER,
        CLASS_LICENSE TEXT,
        SPEND_TIME INTEGER,
        TEST_SCORE INTEGER,
        ISPASS INTEGER,
        LASTDURATION INTEGER,
        LAST_INDEX INTEGER,
        STATUS INTEGER,
        WRONG_NUMBER INTEGER,
        YET_NUMBER INTEGER,
        SOS_VIOLATION INTEGER
      )
    ''');

    await db.execute('''
      CREATE TABLE ZTESTQUEST (
        ZTESTQUESTID INTEGER PRIMARY KEY,
        TESTID INTEGER,
        ZQUESTIONID INTEGER,
        ZANSWER TEXT,
        ZHISTORY TEXT,
        ZNUMBERWRONG INTEGER,
        ZRESULT INTEGER
      )
    ''');
  }

  Future<void> close() async {
    final db = await database;
    await db.close();
    _db = null;
  }
}
