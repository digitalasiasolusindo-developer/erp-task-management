import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _Token = await secureStorage.getString('ff_Token') ?? _Token;
    if (await secureStorage.read(key: 'ff_User') != null) {
      try {
        _User = jsonDecode(await secureStorage.getString('ff_User') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    if (await secureStorage.read(key: 'ff_Tasks') != null) {
      try {
        _Tasks = jsonDecode(await secureStorage.getString('ff_Tasks') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    _Projects = (await secureStorage.getStringList('ff_Projects'))?.map((x) {
          try {
            return jsonDecode(x);
          } catch (e) {
            print("Can't decode persisted json. Error: $e.");
            return {};
          }
        }).toList() ??
        _Projects;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _Token = '';
  String get Token => _Token;
  set Token(String _value) {
    _Token = _value;
    secureStorage.setString('ff_Token', _value);
  }

  void deleteToken() {
    secureStorage.delete(key: 'ff_Token');
  }

  dynamic _User;
  dynamic get User => _User;
  set User(dynamic _value) {
    _User = _value;
    secureStorage.setString('ff_User', jsonEncode(_value));
  }

  void deleteUser() {
    secureStorage.delete(key: 'ff_User');
  }

  dynamic _Tasks;
  dynamic get Tasks => _Tasks;
  set Tasks(dynamic _value) {
    _Tasks = _value;
    secureStorage.setString('ff_Tasks', jsonEncode(_value));
  }

  void deleteTasks() {
    secureStorage.delete(key: 'ff_Tasks');
  }

  List<dynamic> _Projects = [];
  List<dynamic> get Projects => _Projects;
  set Projects(List<dynamic> _value) {
    _Projects = _value;
    secureStorage.setStringList(
        'ff_Projects', _value.map((x) => jsonEncode(x)).toList());
  }

  void deleteProjects() {
    secureStorage.delete(key: 'ff_Projects');
  }

  void addToProjects(dynamic _value) {
    _Projects.add(_value);
    secureStorage.setStringList(
        'ff_Projects', _Projects.map((x) => jsonEncode(x)).toList());
  }

  void removeFromProjects(dynamic _value) {
    _Projects.remove(_value);
    secureStorage.setStringList(
        'ff_Projects', _Projects.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromProjects(int _index) {
    _Projects.removeAt(_index);
    secureStorage.setStringList(
        'ff_Projects', _Projects.map((x) => jsonEncode(x)).toList());
  }

  void updateProjectsAtIndex(
    int _index,
    Function(dynamic) updateFn,
  ) {
    updateFn(_Projects[_index]);
    secureStorage.setStringList(
        'ff_Projects', _Projects.map((x) => jsonEncode(x)).toList());
  }

  int _RefreshCounter = 0;
  int get RefreshCounter => _RefreshCounter;
  set RefreshCounter(int _value) {
    _RefreshCounter = _value;
  }

  String _MobileID = '';
  String get MobileID => _MobileID;
  set MobileID(String _value) {
    _MobileID = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
