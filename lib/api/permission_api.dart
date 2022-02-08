//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PermissionApi {
  PermissionApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add / Revoke permissions to user
  ///
  /// Add a list of granted and revoked permissions to user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [PermissionDto] permissionDto (required):
  Future<Response> modifyUserPermissionsWithHttpInfo(String userId, PermissionDto permissionDto,) async {
    // Verify required params are set.
    if (userId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userId');
    }
    if (permissionDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: permissionDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/rest/v2/permissions/{userId}'
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object postBody = permissionDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Add / Revoke permissions to user
  ///
  /// Add a list of granted and revoked permissions to user.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///
  /// * [PermissionDto] permissionDto (required):
  Future<List<PermissionDto>> modifyUserPermissions(String userId, PermissionDto permissionDto,) async {
    final response = await modifyUserPermissionsWithHttpInfo(userId, permissionDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PermissionDto>') as List)
        .cast<PermissionDto>()
        .toList(growable: false);

    }
    return Future<List<PermissionDto>>.value();
  }
}
