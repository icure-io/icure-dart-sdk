//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MessageApi {
  MessageApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MessageDto] messageDto (required):
  Future<Response> createMessageWithHttpInfo(MessageDto messageDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message';

    // ignore: prefer_final_locals
    Object? postBody = messageDto;

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

  /// Creates a message
  ///
  /// Parameters:
  ///
  /// * [MessageDto] messageDto (required):
  Future<MessageDto?> createMessage(MessageDto messageDto,) async {
    final response = await createMessageWithHttpInfo(messageDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageDto',) as MessageDto;
    
    }
    return null;
  }

  /// Deletes a message delegation
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///
  /// * [String] delegateId (required):
  Future<Response> deleteDelegationWithHttpInfo(String messageId, String delegateId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message/{messageId}/delegate/{delegateId}'
      .replaceAll('{messageId}', messageId)
      .replaceAll('{delegateId}', delegateId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[r'basicSchema'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Deletes a message delegation
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///
  /// * [String] delegateId (required):
  Future<MessageDto?> deleteDelegation(String messageId, String delegateId,) async {
    final response = await deleteDelegationWithHttpInfo(messageId, delegateId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageDto',) as MessageDto;
    
    }
    return null;
  }

  /// Deletes multiple messages
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> deleteMessagesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message/delete/batch';

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

  /// Deletes multiple messages
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<DocIdentifier>?> deleteMessages(ListOfIdsDto listOfIdsDto,) async {
    final response = await deleteMessagesWithHttpInfo(listOfIdsDto,);
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

  /// Get all messages (paginated) for current HC Party
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  Future<Response> findMessagesWithHttpInfo({ String? startKey, String? startDocumentId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message';

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

  /// Get all messages (paginated) for current HC Party
  ///
  /// Parameters:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  Future<PaginatedListMessageDto?> findMessages({ String? startKey, String? startDocumentId, int? limit, }) async {
    final response = await findMessagesWithHttpInfo( startKey: startKey, startDocumentId: startDocumentId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListMessageDto',) as PaginatedListMessageDto;
    
    }
    return null;
  }

  /// Get all messages (paginated) for current HC Party and provided from address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fromAddress:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [String] hcpId:
  Future<Response> findMessagesByFromAddressWithHttpInfo({ String? fromAddress, String? startKey, String? startDocumentId, int? limit, String? hcpId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message/byFromAddress';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (fromAddress != null) {
      queryParams.addAll(_queryParams('', 'fromAddress', fromAddress));
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
    if (hcpId != null) {
      queryParams.addAll(_queryParams('', 'hcpId', hcpId));
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

  /// Get all messages (paginated) for current HC Party and provided from address
  ///
  /// Parameters:
  ///
  /// * [String] fromAddress:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [String] hcpId:
  Future<PaginatedListMessageDto?> findMessagesByFromAddress({ String? fromAddress, String? startKey, String? startDocumentId, int? limit, String? hcpId, }) async {
    final response = await findMessagesByFromAddressWithHttpInfo( fromAddress: fromAddress, startKey: startKey, startDocumentId: startDocumentId, limit: limit, hcpId: hcpId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListMessageDto',) as PaginatedListMessageDto;
    
    }
    return null;
  }

  /// List messages found By Healthcare Party and secret foreign keys.
  ///
  /// Keys must be delimited by coma
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] secretFKeys (required):
  Future<Response> findMessagesByHCPartyPatientForeignKeysWithHttpInfo(String secretFKeys,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message/byHcPartySecretForeignKeys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'secretFKeys', secretFKeys));

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

  /// List messages found By Healthcare Party and secret foreign keys.
  ///
  /// Keys must be delimited by coma
  ///
  /// Parameters:
  ///
  /// * [String] secretFKeys (required):
  Future<List<MessageDto>?> findMessagesByHCPartyPatientForeignKeys(String secretFKeys,) async {
    final response = await findMessagesByHCPartyPatientForeignKeysWithHttpInfo(secretFKeys,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }

  /// Get all messages (paginated) for current HC Party and provided to address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] toAddress:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [bool] reverse:
  ///
  /// * [String] hcpId:
  Future<Response> findMessagesByToAddressWithHttpInfo({ String? toAddress, String? startKey, String? startDocumentId, int? limit, bool? reverse, String? hcpId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message/byToAddress';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (toAddress != null) {
      queryParams.addAll(_queryParams('', 'toAddress', toAddress));
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
    if (reverse != null) {
      queryParams.addAll(_queryParams('', 'reverse', reverse));
    }
    if (hcpId != null) {
      queryParams.addAll(_queryParams('', 'hcpId', hcpId));
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

  /// Get all messages (paginated) for current HC Party and provided to address
  ///
  /// Parameters:
  ///
  /// * [String] toAddress:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [bool] reverse:
  ///
  /// * [String] hcpId:
  Future<PaginatedListMessageDto?> findMessagesByToAddress({ String? toAddress, String? startKey, String? startDocumentId, int? limit, bool? reverse, String? hcpId, }) async {
    final response = await findMessagesByToAddressWithHttpInfo( toAddress: toAddress, startKey: startKey, startDocumentId: startDocumentId, limit: limit, reverse: reverse, hcpId: hcpId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListMessageDto',) as PaginatedListMessageDto;
    
    }
    return null;
  }

  /// Get all messages (paginated) for current HC Party and provided transportGuid
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] transportGuid:
  ///
  /// * [bool] received:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [String] hcpId:
  Future<Response> findMessagesByTransportGuidWithHttpInfo({ String? transportGuid, bool? received, String? startKey, String? startDocumentId, int? limit, String? hcpId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message/byTransportGuid';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (transportGuid != null) {
      queryParams.addAll(_queryParams('', 'transportGuid', transportGuid));
    }
    if (received != null) {
      queryParams.addAll(_queryParams('', 'received', received));
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
    if (hcpId != null) {
      queryParams.addAll(_queryParams('', 'hcpId', hcpId));
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

  /// Get all messages (paginated) for current HC Party and provided transportGuid
  ///
  /// Parameters:
  ///
  /// * [String] transportGuid:
  ///
  /// * [bool] received:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [String] hcpId:
  Future<PaginatedListMessageDto?> findMessagesByTransportGuid({ String? transportGuid, bool? received, String? startKey, String? startDocumentId, int? limit, String? hcpId, }) async {
    final response = await findMessagesByTransportGuidWithHttpInfo( transportGuid: transportGuid, received: received, startKey: startKey, startDocumentId: startDocumentId, limit: limit, hcpId: hcpId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListMessageDto',) as PaginatedListMessageDto;
    
    }
    return null;
  }

  /// Get all messages starting by a prefix between two date
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] transportGuid:
  ///
  /// * [int] from:
  ///
  /// * [int] to:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [String] hcpId:
  Future<Response> findMessagesByTransportGuidSentDateWithHttpInfo({ String? transportGuid, int? from, int? to, String? startKey, String? startDocumentId, int? limit, String? hcpId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message/byTransportGuidSentDate';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (transportGuid != null) {
      queryParams.addAll(_queryParams('', 'transportGuid', transportGuid));
    }
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
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
    if (hcpId != null) {
      queryParams.addAll(_queryParams('', 'hcpId', hcpId));
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

  /// Get all messages starting by a prefix between two date
  ///
  /// Parameters:
  ///
  /// * [String] transportGuid:
  ///
  /// * [int] from:
  ///
  /// * [int] to:
  ///
  /// * [String] startKey:
  ///
  /// * [String] startDocumentId:
  ///
  /// * [int] limit:
  ///
  /// * [String] hcpId:
  Future<PaginatedListMessageDto?> findMessagesByTransportGuidSentDate({ String? transportGuid, int? from, int? to, String? startKey, String? startDocumentId, int? limit, String? hcpId, }) async {
    final response = await findMessagesByTransportGuidSentDateWithHttpInfo( transportGuid: transportGuid, from: from, to: to, startKey: startKey, startDocumentId: startDocumentId, limit: limit, hcpId: hcpId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginatedListMessageDto',) as PaginatedListMessageDto;
    
    }
    return null;
  }

  /// Get children messages of provided message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  Future<Response> getChildrenMessagesWithHttpInfo(String messageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message/{messageId}/children'
      .replaceAll('{messageId}', messageId);

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

  /// Get children messages of provided message
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  Future<List<MessageDto>?> getChildrenMessages(String messageId,) async {
    final response = await getChildrenMessagesWithHttpInfo(messageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }

  /// Gets a message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  Future<Response> getMessageWithHttpInfo(String messageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message/{messageId}'
      .replaceAll('{messageId}', messageId);

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

  /// Gets a message
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  Future<MessageDto?> getMessage(String messageId,) async {
    final response = await getMessageWithHttpInfo(messageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageDto',) as MessageDto;
    
    }
    return null;
  }

  /// Get children messages of provided message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> getMessagesChildrenWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message/children/batch';

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

  /// Get children messages of provided message
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<MessageDto>?> getMessagesChildren(ListOfIdsDto listOfIdsDto,) async {
    final response = await getMessagesChildrenWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }

  /// Get children messages of provided message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> listMessagesByInvoicesWithHttpInfo(ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message/byInvoice';

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

  /// Get children messages of provided message
  ///
  /// Parameters:
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<MessageDto>?> listMessagesByInvoices(ListOfIdsDto listOfIdsDto,) async {
    final response = await listMessagesByInvoicesWithHttpInfo(listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }

  /// Get all messages for current HC Party and provided transportGuids
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] hcpId (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> listMessagesByTransportGuidsWithHttpInfo(String hcpId, ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message/byTransportGuid/list';

    // ignore: prefer_final_locals
    Object? postBody = listOfIdsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'hcpId', hcpId));

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

  /// Get all messages for current HC Party and provided transportGuids
  ///
  /// Parameters:
  ///
  /// * [String] hcpId (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<MessageDto>?> listMessagesByTransportGuids(String hcpId, ListOfIdsDto listOfIdsDto,) async {
    final response = await listMessagesByTransportGuidsWithHttpInfo(hcpId, listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }

  /// Updates a message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MessageDto] messageDto (required):
  Future<Response> modifyMessageWithHttpInfo(MessageDto messageDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message';

    // ignore: prefer_final_locals
    Object? postBody = messageDto;

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

  /// Updates a message
  ///
  /// Parameters:
  ///
  /// * [MessageDto] messageDto (required):
  Future<MessageDto?> modifyMessage(MessageDto messageDto,) async {
    final response = await modifyMessageWithHttpInfo(messageDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MessageDto',) as MessageDto;
    
    }
    return null;
  }

  /// Adds a delegation to a message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///
  /// * [List<DelegationDto>] delegationDto (required):
  Future<Response> newMessageDelegationsWithHttpInfo(String messageId, List<DelegationDto> delegationDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message/{messageId}/delegate'
      .replaceAll('{messageId}', messageId);

    // ignore: prefer_final_locals
    Object? postBody = delegationDto;

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

  /// Adds a delegation to a message
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///
  /// * [List<DelegationDto>] delegationDto (required):
  Future<IcureStubDto?> newMessageDelegations(String messageId, List<DelegationDto> delegationDto,) async {
    final response = await newMessageDelegationsWithHttpInfo(messageId, delegationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IcureStubDto',) as IcureStubDto;
    
    }
    return null;
  }

  /// Set read status for given list of messages
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MessagesReadStatusUpdate] messagesReadStatusUpdate (required):
  Future<Response> setMessagesReadStatusWithHttpInfo(MessagesReadStatusUpdate messagesReadStatusUpdate,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message/readstatus';

    // ignore: prefer_final_locals
    Object? postBody = messagesReadStatusUpdate;

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

  /// Set read status for given list of messages
  ///
  /// Parameters:
  ///
  /// * [MessagesReadStatusUpdate] messagesReadStatusUpdate (required):
  Future<List<MessageDto>?> setMessagesReadStatus(MessagesReadStatusUpdate messagesReadStatusUpdate,) async {
    final response = await setMessagesReadStatusWithHttpInfo(messagesReadStatusUpdate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }

  /// Set status bits for given list of messages
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] status (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<Response> setMessagesStatusBitsWithHttpInfo(int status, ListOfIdsDto listOfIdsDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v2/message/status/{status}'
      .replaceAll('{status}', status.toString());

    // ignore: prefer_final_locals
    Object? postBody = listOfIdsDto;

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

  /// Set status bits for given list of messages
  ///
  /// Parameters:
  ///
  /// * [int] status (required):
  ///
  /// * [ListOfIdsDto] listOfIdsDto (required):
  Future<List<MessageDto>?> setMessagesStatusBits(int status, ListOfIdsDto listOfIdsDto,) async {
    final response = await setMessagesStatusBitsWithHttpInfo(status, listOfIdsDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MessageDto>') as List)
        .cast<MessageDto>()
        .toList();

    }
    return null;
  }
}