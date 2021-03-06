//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of icure_dart_sdk.api;

class TimeSeriesDto {
  /// Returns a new [TimeSeriesDto] instance.
  TimeSeriesDto({
    this.fields = const [],
    this.samples = const [],
    this.min = const [],
    this.max = const [],
    this.mean = const [],
    this.median = const [],
    this.variance = const [],
  });

  List<String> fields;

  List<List<num>> samples;

  List<num> min;

  List<num> max;

  List<num> mean;

  List<num> median;

  List<num> variance;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeSeriesDto &&
          other.fields == fields &&
          other.samples == samples &&
          other.min == min &&
          other.max == max &&
          other.mean == mean &&
          other.median == median &&
          other.variance == variance;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (fields.hashCode) + (samples.hashCode) + (min.hashCode) + (max.hashCode) + (mean.hashCode) + (median.hashCode) + (variance.hashCode);

  @override
  String toString() => 'TimeSeriesDto[fields=$fields, samples=$samples, min=$min, max=$max, mean=$mean, median=$median, variance=$variance]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'fields'] = fields;
    json[r'samples'] = samples;
    json[r'min'] = min;
    json[r'max'] = max;
    json[r'mean'] = mean;
    json[r'median'] = median;
    json[r'variance'] = variance;
    return json;
  }

  /// Returns a new [TimeSeriesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeSeriesDto? fromJson(dynamic value) {
    if (value is TimeSeriesDto) {
      return value;
    }
    if (value is Map) {
      final json = {"fields": [], "samples": [], "min": [], "max": [], "mean": [], "median": [], "variance": [], ...value.cast<String, dynamic>()};

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeSeriesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeSeriesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeSeriesDto(
        fields: json[r'fields'] is List ? (json[r'fields'] as List).cast<String>() : const [],
        samples: json[r'samples'] is List
            ? (json[r'samples'] as List).map((e) => e == null ? <num>[] : (e as List).cast<num>()).toList()
            : null ?? <List<num>>[],
        min: json[r'min'] is List ? (json[r'min'] as List).cast<num>() : const [],
        max: json[r'max'] is List ? (json[r'max'] as List).cast<num>() : const [],
        mean: json[r'mean'] is List ? (json[r'mean'] as List).cast<num>() : const [],
        median: json[r'median'] is List ? (json[r'median'] as List).cast<num>() : const [],
        variance: json[r'variance'] is List ? (json[r'variance'] as List).cast<num>() : const [],
      );
    }
    return null;
  }

  static List<TimeSeriesDto>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TimeSeriesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeSeriesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeSeriesDto> mapFromJson(dynamic json) {
    final map = <String, TimeSeriesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeSeriesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeSeriesDto-objects as value to a dart map
  static Map<String, List<TimeSeriesDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TimeSeriesDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeSeriesDto.listFromJson(
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
    'fields',
    'samples',
    'min',
    'max',
    'mean',
    'median',
    'variance',
  };
}
