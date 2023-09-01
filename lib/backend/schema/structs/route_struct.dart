// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RouteStruct extends BaseStruct {
  RouteStruct({
    DateTime? startTime,
    DateTime? endTime,
  })  : _startTime = startTime,
        _endTime = endTime;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  set startTime(DateTime? val) => _startTime = val;
  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  set endTime(DateTime? val) => _endTime = val;
  bool hasEndTime() => _endTime != null;

  static RouteStruct fromMap(Map<String, dynamic> data) => RouteStruct(
        startTime: data['startTime'] as DateTime?,
        endTime: data['endTime'] as DateTime?,
      );

  static RouteStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RouteStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'startTime': _startTime,
        'endTime': _endTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'startTime': serializeParam(
          _startTime,
          ParamType.DateTime,
        ),
        'endTime': serializeParam(
          _endTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static RouteStruct fromSerializableMap(Map<String, dynamic> data) =>
      RouteStruct(
        startTime: deserializeParam(
          data['startTime'],
          ParamType.DateTime,
          false,
        ),
        endTime: deserializeParam(
          data['endTime'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'RouteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RouteStruct &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode => const ListEquality().hash([startTime, endTime]);
}

RouteStruct createRouteStruct({
  DateTime? startTime,
  DateTime? endTime,
}) =>
    RouteStruct(
      startTime: startTime,
      endTime: endTime,
    );
