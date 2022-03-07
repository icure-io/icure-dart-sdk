// @dart=2.12
part of icure_dart_sdk.api;

class NotPredicate extends Predicate {
  NotPredicate(this.predicate);

  Predicate predicate;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['\$type'] = this.runtimeType.toString().let((type) {
      final regExp = new RegExp(r'([A-Za-z0-9]*)(<.>)?');
      regExp.firstMatch(type);
    });
    json[r'predicate'] = predicate;

    return json;
  }

}
