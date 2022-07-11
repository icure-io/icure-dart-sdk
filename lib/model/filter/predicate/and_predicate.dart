// @dart=2.12
part of icure_dart_sdk.api;

class AndPredicate extends Predicate {
  List<Predicate> predicates = [];

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      return regExp.firstMatch(type)!.group(1);
    });
    json[r'predicates'] = predicates;

    return json;
  }
}
