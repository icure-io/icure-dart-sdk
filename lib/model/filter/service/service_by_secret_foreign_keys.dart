// @dart=2.12
part of icure_dart_sdk.api;

class ServiceBySecretForeignKeys extends AbstractFilterDto<ServiceDto> {
  ServiceBySecretForeignKeys({this.desc, this.healthcarePartyId, this.patientSecretForeignKeys = const {}});

  @override
  String? desc;
  String? healthcarePartyId;
  Set<String> patientSecretForeignKeys = {};

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      return regExp.firstMatch(type)!.group(1);
    });
    if (desc != null) {
      json[r'desc'] = desc;
    }
    if (healthcarePartyId != null) {
      json[r'healthcarePartyId'] = healthcarePartyId;
    }
    if (patientSecretForeignKeys != null) {
      json[r'patientSecretForeignKeys'] = patientSecretForeignKeys.toList();
    }
    return json;
  }

}
