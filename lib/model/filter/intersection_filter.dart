// @dart=2.12

part of icure_dart_sdk.api;

class IntersectionFilter<O> extends AbstractFilterDto<O> {
  IntersectionFilter({this.desc, this.filters = const []});

  @override
  String? desc;
  List<AbstractFilterDto<O>> filters = [];

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString();
    if (desc != null) {
      json[r'desc'] = desc;
    }
    json[r'filters'] = filters;

    return json;
  }

}
