// @dart=2.12

part of icure_dart_sdk.api;

class HealthElementByIdsFilter extends AbstractFilterDto<HealthElementDto> {
  @override
  String? desc;
  Set<String> ids = {};
}
