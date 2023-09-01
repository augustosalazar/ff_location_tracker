import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<LatLng> _currentPath = [];
  List<LatLng> get currentPath => _currentPath;
  set currentPath(List<LatLng> _value) {
    _currentPath = _value;
  }

  void addToCurrentPath(LatLng _value) {
    _currentPath.add(_value);
  }

  void removeFromCurrentPath(LatLng _value) {
    _currentPath.remove(_value);
  }

  void removeAtIndexFromCurrentPath(int _index) {
    _currentPath.removeAt(_index);
  }

  void updateCurrentPathAtIndex(
    int _index,
    LatLng Function(LatLng) updateFn,
  ) {
    _currentPath[_index] = updateFn(_currentPath[_index]);
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
