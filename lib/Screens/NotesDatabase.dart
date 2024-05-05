import 'package:sqflite/sqflite.dart';

class NotesDatabase {
  static final NotesDatabase instance = NotesDatabase._internal();

  static Database? _database;
  NotesDatabase._internal();

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase()async{
   final databasePath = await getDatabasesPath();
   final path = '$databasePath/notes.db';
   return await openDatabase(path, version: 1, onCreate: _createDatabase);
  }

  Future<void> _createDatabase(Database db, int version)async{
   return await db.execute(''' 
    CREATE TABLE notes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL, 
    content TEXT NOT NULL,
    created_item INTEGER NOT NULL)'''
   );

  }



}
