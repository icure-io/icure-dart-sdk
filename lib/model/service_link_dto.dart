//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class ServiceLinkDto {
  /// Returns a new [ServiceLinkDto] instance.
  ServiceLinkDto({
    this.serviceId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is ServiceLinkDto &&
          other.serviceId == serviceId;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
  (serviceId == null ? 0 : serviceId!.hashCode);

  @override
  String toString() => 'ServiceLinkDto[serviceId=$serviceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (serviceId != null) {
      json[r'serviceId'] = serviceId;
    }
    return json;
  }

  /// Returns a new [ServiceLinkDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceLinkDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ServiceLinkDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ServiceLinkDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServiceLinkDto(
        serviceId: mapValueOfType<String>(json, r'serviceId'),
      );
    }
    return null;
  }

  static List<ServiceLinkDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServiceLinkDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceLinkDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceLinkDto> mapFromJson(dynamic json) {
    final map = <String, ServiceLinkDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceLinkDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceLinkDto-objects as value to a dart map
  static Map<String, List<ServiceLinkDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServiceLinkDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceLinkDto.listFromJson(entry.value, growable: growable,);
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

