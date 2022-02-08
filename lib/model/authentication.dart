//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Authentication {
  /// Returns a new [Authentication] instance.
  Authentication({
    this.basic,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Basic? basic;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Authentication &&
     other.basic == basic;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (basic == null ? 0 : basic!.hashCode);

  @override
  String toString() => 'Authentication[basic=$basic]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (basic != null) {
      json[r'basic'] = basic;
    }
    return json;
  }

  /// Returns a new [Authentication] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Authentication? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Authentication[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Authentication[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Authentication(
        basic: Basic.fromJson(json[r'basic']),
      );
    }
    return null;
  }

  static List<Authentication>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Authentication>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Authentication.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Authentication> mapFromJson(dynamic json) {
    final map = <String, Authentication>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Authentication.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Authentication-objects as value to a dart map
  static Map<String, List<Authentication>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Authentication>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Authentication.listFromJson(entry.value, growable: growable,);
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

