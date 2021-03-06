//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class NumeratorRangeDto {
  /// Returns a new [NumeratorRangeDto] instance.
  NumeratorRangeDto({
    this.min,
    this.max,
    this.unit,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? min;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? max;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is NumeratorRangeDto && other.min == min && other.max == max && other.unit == unit;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (min == null ? 0 : min!.hashCode) + (max == null ? 0 : max!.hashCode) + (unit == null ? 0 : unit!.hashCode);

  @override
  String toString() => 'NumeratorRangeDto[min=$min, max=$max, unit=$unit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (min != null) {
      json[r'min'] = min;
    }
    if (max != null) {
      json[r'max'] = max;
    }
    if (unit != null) {
      json[r'unit'] = unit;
    }
    return json;
  }

  /// Returns a new [NumeratorRangeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NumeratorRangeDto? fromJson(dynamic value) {
    if (value is NumeratorRangeDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NumeratorRangeDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NumeratorRangeDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NumeratorRangeDto(
        min: json[r'min'] == null ? null : num.parse(json[r'min'].toString()),
        max: json[r'max'] == null ? null : num.parse(json[r'max'].toString()),
        unit: mapValueOfType<String>(json, r'unit'),
      );
    }
    return null;
  }

  static List<NumeratorRangeDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NumeratorRangeDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NumeratorRangeDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NumeratorRangeDto> mapFromJson(dynamic json) {
    final map = <String, NumeratorRangeDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NumeratorRangeDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NumeratorRangeDto-objects as value to a dart map
  static Map<String, List<NumeratorRangeDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NumeratorRangeDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NumeratorRangeDto.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
