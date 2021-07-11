import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class Database {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/bdk.json');
  }

  Future<File> writeList(Map<String, dynamic> usuario) async {
    final file = await _localFile;
    return file.writeAsString(json.encode(usuario));
  }

  Future<Map<String, dynamic>> readList() async {
    try {
      final file = await _localFile;
      final content = await file.readAsString();
      return json.decode(content);
    } catch (e) {
      return {};
    }
  }
}
