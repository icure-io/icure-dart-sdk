// @dart=2.12

part of icure_dart_sdk.api;

class AllDevicesFilter extends AbstractFilterDto<DeviceDto> {
  AllDevicesFilter({this.desc});

  @override
  String? desc;
}
