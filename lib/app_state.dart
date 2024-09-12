import 'package:flutter/material.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Inningsindex = prefs.getString('ff_Inningsindex') ?? _Inningsindex;
    });
    _safeInit(() {
      _teamIndex = prefs.getString('ff_teamIndex') ?? _teamIndex;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _Inningsindex = '0';
  String get Inningsindex => _Inningsindex;
  set Inningsindex(String value) {
    _Inningsindex = value;
    prefs.setString('ff_Inningsindex', value);
  }

  String _teamIndex = 'home';
  String get teamIndex => _teamIndex;
  set teamIndex(String value) {
    _teamIndex = value;
    prefs.setString('ff_teamIndex', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
