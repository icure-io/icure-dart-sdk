//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class DocIdentifier {
  /// Returns a new [DocIdentifier] instance.
  DocIdentifier({
    this.id,
    this.rev,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rev;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DocIdentifier && other.id == id && other.rev == rev;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (id == null ? 0 : id!.hashCode) + (rev == null ? 0 : rev!.hashCode);

  @override
  String toString() => 'DocIdentifier[id=$id, rev=$rev]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (rev != null) {
      json[r'rev'] = rev;
    }
    return json;
  }

  /// Returns a new [DocIdentifier] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocIdentifier? fromJson(dynamic value) {
    if (value is DocIdentifier) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DocIdentifier[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DocIdentifier[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DocIdentifier(
        id: mapValueOfType<String>(json, r'id'),
        rev: mapValueOfType<String>(json, r'rev'),
      );
    }
    return null;
  }

  static List<DocIdentifier>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DocIdentifier>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocIdentifier.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DocIdentifier> mapFromJson(dynamic json) {
    final map = <String, DocIdentifier>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocIdentifier.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DocIdentifier-objects as value to a dart map
  static Map<String, List<DocIdentifier>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DocIdentifier>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocIdentifier.listFromJson(
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
