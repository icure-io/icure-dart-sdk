//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class LabelledOccurenceDto {
  /// Returns a new [LabelledOccurenceDto] instance.
  LabelledOccurenceDto({
    this.label,
    this.occurence,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? occurence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LabelledOccurenceDto && other.label == label && other.occurence == occurence;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (label == null ? 0 : label!.hashCode) + (occurence == null ? 0 : occurence!.hashCode);

  @override
  String toString() => 'LabelledOccurenceDto[label=$label, occurence=$occurence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (label != null) {
      json[r'label'] = label;
    }
    if (occurence != null) {
      json[r'occurence'] = occurence;
    }
    return json;
  }

  /// Returns a new [LabelledOccurenceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LabelledOccurenceDto? fromJson(dynamic value) {
    if (value is LabelledOccurenceDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LabelledOccurenceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LabelledOccurenceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LabelledOccurenceDto(
        label: mapValueOfType<String>(json, r'label'),
        occurence: mapValueOfType<int>(json, r'occurence'),
      );
    }
    return null;
  }

  static List<LabelledOccurenceDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <LabelledOccurenceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LabelledOccurenceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LabelledOccurenceDto> mapFromJson(dynamic json) {
    final map = <String, LabelledOccurenceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LabelledOccurenceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LabelledOccurenceDto-objects as value to a dart map
  static Map<String, List<LabelledOccurenceDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<LabelledOccurenceDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LabelledOccurenceDto.listFromJson(
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
