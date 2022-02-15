// @dart=2.12

part of icure_dart_sdk.api;

class ContactByHcPartyFilter extends AbstractFilterDto<ContactDto> {
  ContactByHcPartyFilter({this.desc, this.hcpId});

  @override String? desc;
  String? hcpId;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString();
    if (desc != null) {
      json[r'desc'] = desc;
    }
    if (hcpId != null) {
      json[r'hcpId'] = hcpId;
    }
    return json;
  }

}
