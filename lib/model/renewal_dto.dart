//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RenewalDto {
  /// Returns a new [RenewalDto] instance.
  RenewalDto({
    this.decimal,
    this.duration,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? decimal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DurationDto? duration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RenewalDto &&
     other.decimal == decimal &&
     other.duration == duration;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (decimal == null ? 0 : decimal!.hashCode) +
    (duration == null ? 0 : duration!.hashCode);

  @override
  String toString() => 'RenewalDto[decimal=$decimal, duration=$duration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (decimal != null) {
      json[r'decimal'] = decimal;
    }
    if (duration != null) {
      json[r'duration'] = duration;
    }
    return json;
  }

  /// Returns a new [RenewalDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RenewalDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RenewalDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RenewalDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RenewalDto(
        decimal: mapValueOfType<int>(json, r'decimal'),
        duration: DurationDto.fromJson(json[r'duration']),
      );
    }
    return null;
  }

  static List<RenewalDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RenewalDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RenewalDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RenewalDto> mapFromJson(dynamic json) {
    final map = <String, RenewalDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RenewalDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RenewalDto-objects as value to a dart map
  static Map<String, List<RenewalDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RenewalDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RenewalDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

