import 'package:flutter/cupertino.dart';
import 'package:quest_server/core/service/database.service.dart';

class DatabaseNotifier extends ChangeNotifier {
  final DatabaseService _databaseService = new DatabaseService();

  Future fetchData() async {
    await _databaseService.fetchId();
  }
}
