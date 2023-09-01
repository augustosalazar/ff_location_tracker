// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PathStruct extends BaseStruct {
  PathStruct({
    LatLng? point,
  }) : _point = point;

  // "point" field.
  LatLng? _point;
  LatLng? get point => _point;
  set point(LatLng? val) => _point = val;
  bool hasPoint() => _point != null;

  static PathStruct fromMap(Map<String, dynamic> data) => PathStruct(
        point: data['point'] as LatLng?,
      );

  static PathStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PathStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'point': _point,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'point': serializeParam(
          _point,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static PathStruct fromSerializableMap(Map<String, dynamic> data) =>
      PathStruct(
        point: deserializeParam(
          data['point'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'PathStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PathStruct && point == other.point;
  }

  @override
  int get hashCode => const ListEquality().hash([point]);
}

PathStruct createPathStruct({
  LatLng? point,
}) =>
    PathStruct(
      point: point,
    );
