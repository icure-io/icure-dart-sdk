//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class BasicDto {
  /// Returns a new [BasicDto] instance.
  BasicDto({
    required this.username,
    required this.password,
  });

  String username;

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BasicDto && other.username == username && other.password == password;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (username.hashCode) + (password.hashCode);

  @override
  String toString() => 'BasicDto[username=$username, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'username'] = username;
    json[r'password'] = password;
    return json;
  }

  /// Returns a new [BasicDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BasicDto? fromJson(dynamic value) {
    if (value is BasicDto) {
      return value;
    }
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BasicDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BasicDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BasicDto(
        username: mapValueOfType<String>(json, r'username')!,
        password: mapValueOfType<String>(json, r'password')!,
      );
    }
    return null;
  }

  static List<BasicDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BasicDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BasicDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BasicDto> mapFromJson(dynamic json) {
    final map = <String, BasicDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BasicDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BasicDto-objects as value to a dart map
  static Map<String, List<BasicDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<BasicDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BasicDto.listFromJson(
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
  static const requiredKeys = <String>{
    'username',
    'password',
  };
}
