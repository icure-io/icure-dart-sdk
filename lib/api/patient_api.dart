//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PatientApi {
  PatientApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get count of patients for a specific HcParty or for the current HcParty 
  ///
  /// Returns the count of patients
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///   Healthcare party id
  Future<Response> countOfPatientsWithHttpInfo(String hcPartyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/hcParty/{hcPartyId}/count'
      .replaceAll('{hcPartyId}', hcPartyId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get count of patients for a specific HcParty or for the current HcParty 
  ///
  /// Returns the count of patients
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///   Healthcare party id
  Future<ContentDto?> countOfPatients(String hcPartyId,) async {
    final response = await countOfPatientsWithHttpInfo(hcPartyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContentDto',) as ContentDto;
    
    }
    return null;
  }

  /// Create a patient
  ///
  /// Name, last name, date of birth, and gender are required. After creation of the patient and obtaining the ID, you need to create an initial delegation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PatientDto] patientDto (required):
  Future<Response> createPatientWithHttpInfo(PatientDto patientDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient';

    // ignore: prefer_final_locals
    Object? postBody = patientDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Create a patient
  ///
  /// Name, last name, date of birth, and gender are required. After creation of the patient and obtaining the ID, you need to create an initial delegation.
  ///
  /// Parameters:
  ///
  /// * [PatientDto] patientDto (required):
  Future<PatientDto?> createPatient(PatientDto patientDto,) async {
    final response = await createPatientWithHttpInfo(patientDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PatientDto',) as PatientDto;
    
    }
    return null;
  }

  /// Create patients in bulk
  ///
  /// Returns the id and _rev of created patients
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<PatientDto>] patientDto (required):
  Future<Response> createPatientsWithHttpInfo(List<PatientDto> patientDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/batch';

    // ignore: prefer_final_locals
    Object? postBody = patientDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Create patients in bulk
  ///
  /// Returns the id and _rev of created patients
  ///
  /// Parameters:
  ///
  /// * [List<PatientDto>] patientDto (required):
  Future<List<IdWithRevDto>?> createPatients(List<PatientDto> patientDto,) async {
    final response = await createPatientsWithHttpInfo(patientDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IdWithRevDto>') as List)
        .cast<IdWithRevDto>()
        .toList();

    }
    return null;
  }

  /// Delete patients.
  ///
  /// Response is an array containing the ID of deleted patient..
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deletePatientsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/delete/batch';

    // ignore: prefer_final_locals
    Object? postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Delete patients.
  ///
  /// Response is an array containing the ID of deleted patient..
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>?> deletePatients(ListOfIdsDto listOfIdsDto,) async {
    final response = await deletePatientsWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocIdentifier>') as List)
        .cast<DocIdentifier>()
        .toList();

    }
    return null;
  }

  /// Filter patients for the current user (HcParty) 
  ///
  /// Returns a list of patients along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FilterChainPatient] filterChainPatient (required):
  ///
  /// * [String] startKey:
  ///   The start key for pagination, depends on the filters used
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  ///
  /// * [int] skip:
  ///   Skip rows
  ///
  /// * [String] sort:
  ///   Sort key
  ///
  /// * [bool] desc:
  ///   Descending
  Future<Response> filterPatientsByWithHttpInfo(FilterChainPatient filterChainPatient, { String? startKey, String? startDocumentId, int? limit, int? skip, String? sort, bool? desc, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/filter';

    // ignore: prefer_final_locals
    Object? postBody = filterChainPatient;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (skip != null) {
      queryParams.addAll(_queryParams('', 'skip', skip));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (desc != null) {
      queryParams.addAll(_queryParams('', 'desc', desc));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Filter patients for the current user (HcParty) 
  ///
  /// Returns a list of patients along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Parameters:
  ///
  /// * [FilterChainPatient] filterChainPatient (required):
  ///
  /// * [String] startKey:
  ///   The start key for pagination, depends on the filters used
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  ///
  /// * [int] skip:
  ///   Skip rows
  ///
  /// * [String] sort:
  ///   Sort key
  ///
  /// * [bool] desc:
  ///   Descending
  Future<PaginatedListPatientDto?> filterPatientsBy(FilterChainPatient filterChainPatient, { String? startKey, String? startDocumentId, int? limit, int? skip, String? sort, bool? desc, }) async {
    final response = await filterPatientsByWithHttpInfo(filterChainPatient,  startKey: startKey, startDocumentId: startDocumentId, limit: limit, skip: skip, sort: sort, desc: desc, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListPatientDto',) as PaginatedListPatientDto;
    
    }
    return null;
  }

  /// Find deleted patients
  ///
  /// Returns a list of deleted patients, within the specified time period, if any.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] startDate:
  ///   Filter deletions after this date (unix epoch), included
  ///
  /// * [int] endDate:
  ///   Filter deletions before this date (unix epoch), included
  ///
  /// * [bool] desc:
  ///   Descending
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findDeletedPatientsWithHttpInfo({ int? startDate, int? endDate, bool? desc, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/deleted/byDate';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (desc != null) {
      queryParams.addAll(_queryParams('', 'desc', desc));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Find deleted patients
  ///
  /// Returns a list of deleted patients, within the specified time period, if any.
  ///
  /// Parameters:
  ///
  /// * [int] startDate:
  ///   Filter deletions after this date (unix epoch), included
  ///
  /// * [int] endDate:
  ///   Filter deletions before this date (unix epoch), included
  ///
  /// * [bool] desc:
  ///   Descending
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListPatientDto?> findDeletedPatients({ int? startDate, int? endDate, bool? desc, String? startDocumentId, int? limit, }) async {
    final response = await findDeletedPatientsWithHttpInfo( startDate: startDate, endDate: endDate, desc: desc, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListPatientDto',) as PaginatedListPatientDto;
    
    }
    return null;
  }

  /// Provides a paginated list of patients with duplicate name for an hecparty
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///   Healthcare party id
  ///
  /// * [String] startKey:
  ///   The start key for pagination, depends on the filters used
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findDuplicatesByNameWithHttpInfo(String hcPartyId, { String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/duplicates/name';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hcPartyId', hcPartyId));
    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Provides a paginated list of patients with duplicate name for an hecparty
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///   Healthcare party id
  ///
  /// * [String] startKey:
  ///   The start key for pagination, depends on the filters used
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListPatientDto?> findDuplicatesByName(String hcPartyId, { String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findDuplicatesByNameWithHttpInfo(hcPartyId,  startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListPatientDto',) as PaginatedListPatientDto;
    
    }
    return null;
  }

  /// Provides a paginated list of patients with duplicate ssin for an hecparty
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///   Healthcare party id
  ///
  /// * [String] startKey:
  ///   The start key for pagination, depends on the filters used
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findDuplicatesBySsinWithHttpInfo(String hcPartyId, { String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/duplicates/ssin';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hcPartyId', hcPartyId));
    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Provides a paginated list of patients with duplicate ssin for an hecparty
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///   Healthcare party id
  ///
  /// * [String] startKey:
  ///   The start key for pagination, depends on the filters used
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListPatientDto?> findDuplicatesBySsin(String hcPartyId, { String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findDuplicatesBySsinWithHttpInfo(hcPartyId,  startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListPatientDto',) as PaginatedListPatientDto;
    
    }
    return null;
  }

  /// Get Paginated List of Patients sorted by Access logs descending
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   A User ID
  ///
  /// * [String] accessType:
  ///   The type of access (COMPUTER or USER)
  ///
  /// * [int] startDate:
  ///   The start search epoch
  ///
  /// * [String] startKey:
  ///   The start key for pagination
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findPatientsByAccessLogUserAfterDateWithHttpInfo(String userId, { String? accessType, int? startDate, String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/byAccess/{userId}'
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accessType != null) {
      queryParams.addAll(_queryParams('', 'accessType', accessType));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get Paginated List of Patients sorted by Access logs descending
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   A User ID
  ///
  /// * [String] accessType:
  ///   The type of access (COMPUTER or USER)
  ///
  /// * [int] startDate:
  ///   The start search epoch
  ///
  /// * [String] startKey:
  ///   The start key for pagination
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListPatientDto?> findPatientsByAccessLogUserAfterDate(String userId, { String? accessType, int? startDate, String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findPatientsByAccessLogUserAfterDateWithHttpInfo(userId,  accessType: accessType, startDate: startDate, startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListPatientDto',) as PaginatedListPatientDto;
    
    }
    return null;
  }

  /// List patients for a specific HcParty
  ///
  /// Returns a list of patients along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId:
  ///   Healthcare party id
  ///
  /// * [String] sortField:
  ///   Optional value for sorting results by a given field ('name', 'ssin', 'dateOfBirth'). Specifying this deactivates filtering
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  ///
  /// * [String] sortDirection:
  ///   Optional value for providing a sorting direction ('asc', 'desc'). Set to 'asc' by default.
  Future<Response> findPatientsByHealthcarePartyWithHttpInfo({ String? hcPartyId, String? sortField, String? startKey, String? startDocumentId, int? limit, String? sortDirection, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (hcPartyId != null) {
      queryParams.addAll(_queryParams('', 'hcPartyId', hcPartyId));
    }
    if (sortField != null) {
      queryParams.addAll(_queryParams('', 'sortField', sortField));
    }
    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (sortDirection != null) {
      queryParams.addAll(_queryParams('', 'sortDirection', sortDirection));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// List patients for a specific HcParty
  ///
  /// Returns a list of patients along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId:
  ///   Healthcare party id
  ///
  /// * [String] sortField:
  ///   Optional value for sorting results by a given field ('name', 'ssin', 'dateOfBirth'). Specifying this deactivates filtering
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  ///
  /// * [String] sortDirection:
  ///   Optional value for providing a sorting direction ('asc', 'desc'). Set to 'asc' by default.
  Future<PaginatedListPatientDto?> findPatientsByHealthcareParty({ String? hcPartyId, String? sortField, String? startKey, String? startDocumentId, int? limit, String? sortDirection, }) async {
    final response = await findPatientsByHealthcarePartyWithHttpInfo( hcPartyId: hcPartyId, sortField: sortField, startKey: startKey, startDocumentId: startDocumentId, limit: limit, sortDirection: sortDirection, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListPatientDto',) as PaginatedListPatientDto;
    
    }
    return null;
  }

  /// Find patients for the current user (HcParty) 
  ///
  /// Returns a list of patients along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] healthcarePartyId:
  ///   HealthcareParty Id, if unset will user user's hcpId
  ///
  /// * [String] filterValue:
  ///   Optional value for filtering results
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  ///
  /// * [String] sortDirection:
  ///   Optional value for providing a sorting direction ('asc', 'desc'). Set to 'asc' by default.
  Future<Response> findPatientsByNameBirthSsinAutoWithHttpInfo({ String? healthcarePartyId, String? filterValue, String? startKey, String? startDocumentId, int? limit, String? sortDirection, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/byNameBirthSsinAuto';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (healthcarePartyId != null) {
      queryParams.addAll(_queryParams('', 'healthcarePartyId', healthcarePartyId));
    }
    if (filterValue != null) {
      queryParams.addAll(_queryParams('', 'filterValue', filterValue));
    }
    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (sortDirection != null) {
      queryParams.addAll(_queryParams('', 'sortDirection', sortDirection));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Find patients for the current user (HcParty) 
  ///
  /// Returns a list of patients along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Parameters:
  ///
  /// * [String] healthcarePartyId:
  ///   HealthcareParty Id, if unset will user user's hcpId
  ///
  /// * [String] filterValue:
  ///   Optional value for filtering results
  ///
  /// * [String] startKey:
  ///   The start key for pagination: a JSON representation of an array containing all the necessary components to form the Complex Key's startKey
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  ///
  /// * [String] sortDirection:
  ///   Optional value for providing a sorting direction ('asc', 'desc'). Set to 'asc' by default.
  Future<PaginatedListPatientDto?> findPatientsByNameBirthSsinAuto({ String? healthcarePartyId, String? filterValue, String? startKey, String? startDocumentId, int? limit, String? sortDirection, }) async {
    final response = await findPatientsByNameBirthSsinAutoWithHttpInfo( healthcarePartyId: healthcarePartyId, filterValue: filterValue, startKey: startKey, startDocumentId: startDocumentId, limit: limit, sortDirection: sortDirection, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListPatientDto',) as PaginatedListPatientDto;
    
    }
    return null;
  }

  /// List patients by pages for a specific HcParty
  ///
  /// Returns a list of patients along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///   Healthcare party id
  ///
  /// * [String] startKey:
  ///   The page first id
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Page size
  Future<Response> findPatientsIdsByHealthcarePartyWithHttpInfo(String hcPartyId, { String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/byHcPartyId';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hcPartyId', hcPartyId));
    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// List patients by pages for a specific HcParty
  ///
  /// Returns a list of patients along with next start keys and Document ID. If the nextStartKey is Null it means that this is the last page.
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///   Healthcare party id
  ///
  /// * [String] startKey:
  ///   The page first id
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Page size
  Future<PaginatedListString?> findPatientsIdsByHealthcareParty(String hcPartyId, { String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findPatientsIdsByHealthcarePartyWithHttpInfo(hcPartyId,  startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListString',) as PaginatedListString;
    
    }
    return null;
  }

  /// List patients that have been modified after the provided date
  ///
  /// Returns a list of patients that have been modified after the provided date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] date (required):
  ///
  /// * [int] startKey:
  ///   The start key for pagination the date of the first element of the new page
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<Response> findPatientsModifiedAfterWithHttpInfo(int date, { int? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/modifiedAfter/{date}'
      .replaceAll('{date}', date.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startKey != null) {
      queryParams.addAll(_queryParams('', 'startKey', startKey));
    }
    if (startDocumentId != null) {
      queryParams.addAll(_queryParams('', 'startDocumentId', startDocumentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// List patients that have been modified after the provided date
  ///
  /// Returns a list of patients that have been modified after the provided date
  ///
  /// Parameters:
  ///
  /// * [int] date (required):
  ///
  /// * [int] startKey:
  ///   The start key for pagination the date of the first element of the new page
  ///
  /// * [String] startDocumentId:
  ///   A patient document ID
  ///
  /// * [int] limit:
  ///   Number of rows
  Future<PaginatedListPatientDto?> findPatientsModifiedAfter(int date, { int? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findPatientsModifiedAfterWithHttpInfo(date,  startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListPatientDto',) as PaginatedListPatientDto;
    
    }
    return null;
  }

  /// Filter patients for the current user (HcParty) 
  ///
  /// Returns a list of patients
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] firstName:
  ///   The first name
  ///
  /// * [String] lastName:
  ///   The last name
  ///
  /// * [int] dateOfBirth:
  ///   The date of birth
  Future<Response> fuzzySearchWithHttpInfo({ String? firstName, String? lastName, int? dateOfBirth, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/fuzzy';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (firstName != null) {
      queryParams.addAll(_queryParams('', 'firstName', firstName));
    }
    if (lastName != null) {
      queryParams.addAll(_queryParams('', 'lastName', lastName));
    }
    if (dateOfBirth != null) {
      queryParams.addAll(_queryParams('', 'dateOfBirth', dateOfBirth));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Filter patients for the current user (HcParty) 
  ///
  /// Returns a list of patients
  ///
  /// Parameters:
  ///
  /// * [String] firstName:
  ///   The first name
  ///
  /// * [String] lastName:
  ///   The last name
  ///
  /// * [int] dateOfBirth:
  ///   The date of birth
  Future<List<PatientDto>?> fuzzySearch({ String? firstName, String? lastName, int? dateOfBirth, }) async {
    final response = await fuzzySearchWithHttpInfo( firstName: firstName, lastName: lastName, dateOfBirth: dateOfBirth, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PatientDto>') as List)
        .cast<PatientDto>()
        .toList();

    }
    return null;
  }

  /// Get patient
  ///
  /// It gets patient administrative data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  Future<Response> getPatientWithHttpInfo(String patientId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/{patientId}'
      .replaceAll('{patientId}', patientId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get patient
  ///
  /// It gets patient administrative data.
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  Future<PatientDto?> getPatient(String patientId,) async {
    final response = await getPatientWithHttpInfo(patientId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PatientDto',) as PatientDto;
    
    }
    return null;
  }

  /// Get the patient having the provided externalId
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] externalId (required):
  ///   A external ID
  Future<Response> getPatientByExternalIdWithHttpInfo(String externalId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/byExternalId/{externalId}'
      .replaceAll('{externalId}', externalId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get the patient having the provided externalId
  ///
  /// Parameters:
  ///
  /// * [String] externalId (required):
  ///   A external ID
  Future<PatientDto?> getPatientByExternalId(String externalId,) async {
    final response = await getPatientByExternalIdWithHttpInfo(externalId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PatientDto',) as PatientDto;
    
    }
    return null;
  }

  /// Get patient by identifier
  ///
  /// It gets patient administrative data based on the identifier (root & extension) parameters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [String] system:
  Future<Response> getPatientByHealthcarepartyAndIdentifierWithHttpInfo(String hcPartyId, String id, { String? system, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/{hcPartyId}/{id}'
      .replaceAll('{hcPartyId}', hcPartyId)
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (system != null) {
      queryParams.addAll(_queryParams('', 'system', system));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get patient by identifier
  ///
  /// It gets patient administrative data based on the identifier (root & extension) parameters.
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [String] system:
  Future<PatientDto?> getPatientByHealthcarepartyAndIdentifier(String hcPartyId, String id, { String? system, }) async {
    final response = await getPatientByHealthcarepartyAndIdentifierWithHttpInfo(hcPartyId, id,  system: system, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PatientDto',) as PatientDto;
    
    }
    return null;
  }

  /// Get the patient (identified by patientId) hcparty keys. Those keys are AES keys (encrypted) used to share information between HCPs and a patient.
  ///
  /// This endpoint is used to recover all keys that have already been created and that can be used to share information with this patient. It returns a map with the following structure: ID of the owner of the encrypted AES key -> encrypted AES key. The returned encrypted AES keys will have to be decrypted using the patient's private key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///   The patient Id for which information is shared
  Future<Response> getPatientHcPartyKeysForDelegateWithHttpInfo(String patientId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/{patientId}/keys'
      .replaceAll('{patientId}', patientId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get the patient (identified by patientId) hcparty keys. Those keys are AES keys (encrypted) used to share information between HCPs and a patient.
  ///
  /// This endpoint is used to recover all keys that have already been created and that can be used to share information with this patient. It returns a map with the following structure: ID of the owner of the encrypted AES key -> encrypted AES key. The returned encrypted AES keys will have to be decrypted using the patient's private key.
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///   The patient Id for which information is shared
  Future<String?> getPatientHcPartyKeysForDelegate(String patientId,) async {
    final response = await getPatientHcPartyKeysForDelegateWithHttpInfo(patientId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Get patients by id
  ///
  /// It gets patient administrative data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> getPatientsWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/byIds';

    // ignore: prefer_final_locals
    Object? postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get patients by id
  ///
  /// It gets patient administrative data.
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<PatientDto>?> getPatients(ListOfIdsDto listOfIdsDto,) async {
    final response = await getPatientsWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PatientDto>') as List)
        .cast<PatientDto>()
        .toList();

    }
    return null;
  }

  /// Find deleted patients
  ///
  /// Returns a list of deleted patients, by name and/or firstname prefix, if any.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] firstName:
  ///   First name prefix
  ///
  /// * [String] lastName:
  ///   Last name prefix
  Future<Response> listDeletedPatientsByNameWithHttpInfo({ String? firstName, String? lastName, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/deleted/by_name';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (firstName != null) {
      queryParams.addAll(_queryParams('', 'firstName', firstName));
    }
    if (lastName != null) {
      queryParams.addAll(_queryParams('', 'lastName', lastName));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Find deleted patients
  ///
  /// Returns a list of deleted patients, by name and/or firstname prefix, if any.
  ///
  /// Parameters:
  ///
  /// * [String] firstName:
  ///   First name prefix
  ///
  /// * [String] lastName:
  ///   Last name prefix
  Future<List<PatientDto>?> listDeletedPatientsByName({ String? firstName, String? lastName, }) async {
    final response = await listDeletedPatientsByNameWithHttpInfo( firstName: firstName, lastName: lastName, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PatientDto>') as List)
        .cast<PatientDto>()
        .toList();

    }
    return null;
  }

  /// List patients that have been merged towards another patient 
  ///
  /// Returns a list of patients that have been merged after the provided date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] date (required):
  Future<Response> listOfMergesAfterWithHttpInfo(int date,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/merges/{date}'
      .replaceAll('{date}', date.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// List patients that have been merged towards another patient 
  ///
  /// Returns a list of patients that have been merged after the provided date
  ///
  /// Parameters:
  ///
  /// * [int] date (required):
  Future<List<PatientDto>?> listOfMergesAfter(int date,) async {
    final response = await listOfMergesAfterWithHttpInfo(date,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PatientDto>') as List)
        .cast<PatientDto>()
        .toList();

    }
    return null;
  }

  /// Get ids of patients matching the provided filter for the current user (HcParty) 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AbstractFilterDtoPatient] abstractFilterDtoPatient (required):
  Future<Response> matchPatientsByWithHttpInfo(AbstractFilterDtoPatient abstractFilterDtoPatient,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/match';

    // ignore: prefer_final_locals
    Object? postBody = abstractFilterDtoPatient;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Get ids of patients matching the provided filter for the current user (HcParty) 
  ///
  /// Parameters:
  ///
  /// * [AbstractFilterDtoPatient] abstractFilterDtoPatient (required):
  Future<List<String>?> matchPatientsBy(AbstractFilterDtoPatient abstractFilterDtoPatient,) async {
    final response = await matchPatientsByWithHttpInfo(abstractFilterDtoPatient,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList();

    }
    return null;
  }

  /// Merge a series of patients into another patient
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] toId (required):
  ///
  /// * [String] fromIds (required):
  Future<Response> mergeIntoWithHttpInfo(String toId, String fromIds,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/mergeInto/{toId}/from/{fromIds}'
      .replaceAll('{toId}', toId)
      .replaceAll('{fromIds}', fromIds);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Merge a series of patients into another patient
  ///
  /// Parameters:
  ///
  /// * [String] toId (required):
  ///
  /// * [String] fromIds (required):
  Future<PatientDto?> mergeInto(String toId, String fromIds,) async {
    final response = await mergeIntoWithHttpInfo(toId, fromIds,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PatientDto',) as PatientDto;
    
    }
    return null;
  }

  /// Modify a patient
  ///
  /// No particular return value. It's just a message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PatientDto] patientDto (required):
  Future<Response> modifyPatientWithHttpInfo(PatientDto patientDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient';

    // ignore: prefer_final_locals
    Object? postBody = patientDto;

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
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Modify a patient
  ///
  /// No particular return value. It's just a message.
  ///
  /// Parameters:
  ///
  /// * [PatientDto] patientDto (required):
  Future<PatientDto?> modifyPatient(PatientDto patientDto,) async {
    final response = await modifyPatientWithHttpInfo(patientDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PatientDto',) as PatientDto;
    
    }
    return null;
  }

  /// Set a patient referral doctor
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] referralId (required):
  ///   The referal id. Accepts 'none' for referral removal.
  ///
  /// * [int] start:
  ///   Optional value for start of referral
  ///
  /// * [int] end:
  ///   Optional value for end of referral
  Future<Response> modifyPatientReferralWithHttpInfo(String patientId, String referralId, { int? start, int? end, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/{patientId}/referral/{referralId}'
      .replaceAll('{patientId}', patientId)
      .replaceAll('{referralId}', referralId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (start != null) {
      queryParams.addAll(_queryParams('', 'start', start));
    }
    if (end != null) {
      queryParams.addAll(_queryParams('', 'end', end));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Set a patient referral doctor
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [String] referralId (required):
  ///   The referal id. Accepts 'none' for referral removal.
  ///
  /// * [int] start:
  ///   Optional value for start of referral
  ///
  /// * [int] end:
  ///   Optional value for end of referral
  Future<PatientDto?> modifyPatientReferral(String patientId, String referralId, { int? start, int? end, }) async {
    final response = await modifyPatientReferralWithHttpInfo(patientId, referralId,  start: start, end: end, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PatientDto',) as PatientDto;
    
    }
    return null;
  }

  /// Modify patients in bulk
  ///
  /// Returns the id and _rev of modified patients
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<PatientDto>] patientDto (required):
  Future<Response> modifyPatientsWithHttpInfo(List<PatientDto> patientDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/batch';

    // ignore: prefer_final_locals
    Object? postBody = patientDto;

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
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Modify patients in bulk
  ///
  /// Returns the id and _rev of modified patients
  ///
  /// Parameters:
  ///
  /// * [List<PatientDto>] patientDto (required):
  Future<List<IdWithRevDto>?> modifyPatients(List<PatientDto> patientDto,) async {
    final response = await modifyPatientsWithHttpInfo(patientDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IdWithRevDto>') as List)
        .cast<IdWithRevDto>()
        .toList();

    }
    return null;
  }

  /// Delegates a patients to a healthcare party
  ///
  /// It delegates a patient to a healthcare party (By current healthcare party). A modified patient with new delegation gets returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [List<DelegationDto>] delegationDto (required):
  Future<Response> newPatientDelegationsWithHttpInfo(String patientId, List<DelegationDto> delegationDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/{patientId}/delegate'
      .replaceAll('{patientId}', patientId);

    // ignore: prefer_final_locals
    Object? postBody = delegationDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Delegates a patients to a healthcare party
  ///
  /// It delegates a patient to a healthcare party (By current healthcare party). A modified patient with new delegation gets returned.
  ///
  /// Parameters:
  ///
  /// * [String] patientId (required):
  ///
  /// * [List<DelegationDto>] delegationDto (required):
  Future<PatientDto?> newPatientDelegations(String patientId, List<DelegationDto> delegationDto,) async {
    final response = await newPatientDelegationsWithHttpInfo(patientId, delegationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PatientDto',) as PatientDto;
    
    }
    return null;
  }

  /// Register a patient
  ///
  /// Register a new patient into the system
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] groupId (required):
  ///
  /// * [PatientDto] patientDto (required):
  ///
  /// * [String] token:
  ///
  /// * [bool] useShortToken:
  Future<Response> registerPatientWithHttpInfo(String hcPartyId, String groupId, PatientDto patientDto, { String? token, bool? useShortToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/register/forHcp/{hcPartyId}/inGroup/{groupId}'
      .replaceAll('{hcPartyId}', hcPartyId)
      .replaceAll('{groupId}', groupId);

    // ignore: prefer_final_locals
    Object? postBody = patientDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (token != null) {
      queryParams.addAll(_queryParams('', 'token', token));
    }
    if (useShortToken != null) {
      queryParams.addAll(_queryParams('', 'useShortToken', useShortToken));
    }

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Register a patient
  ///
  /// Register a new patient into the system
  ///
  /// Parameters:
  ///
  /// * [String] hcPartyId (required):
  ///
  /// * [String] groupId (required):
  ///
  /// * [PatientDto] patientDto (required):
  ///
  /// * [String] token:
  ///
  /// * [bool] useShortToken:
  Future<PatientRegistrationSuccessDto?> registerPatient(String hcPartyId, String groupId, PatientDto patientDto, { String? token, bool? useShortToken, }) async {
    final response = await registerPatientWithHttpInfo(hcPartyId, groupId, patientDto,  token: token, useShortToken: useShortToken, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PatientRegistrationSuccessDto',) as PatientRegistrationSuccessDto;
    
    }
    return null;
  }

  /// undelete previously deleted patients
  ///
  /// Response is an array containing the ID of undeleted patient..
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] patientIds (required):
  Future<Response> undeletePatientWithHttpInfo(String patientIds,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/patient/undelete/{patientIds}'
      .replaceAll('{patientIds}', patientIds);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// undelete previously deleted patients
  ///
  /// Response is an array containing the ID of undeleted patient..
  ///
  /// Parameters:
  ///
  /// * [String] patientIds (required):
  Future<List<DocIdentifier>?> undeletePatient(String patientIds,) async {
    final response = await undeletePatientWithHttpInfo(patientIds,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DocIdentifier>') as List)
        .cast<DocIdentifier>()
        .toList();

    }
    return null;
  }
}