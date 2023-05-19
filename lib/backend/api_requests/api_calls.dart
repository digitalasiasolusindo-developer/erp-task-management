import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Global Group Code

class GlobalGroup {
  static String baseUrl = 'https://hris.digitalasiasolusindo.com/api/method/';
  static Map<String, String> headers = {
    'Authorization': 'token 2892f7f1c744906:7790b556a38cb92',
  };
  static LoginCall loginCall = LoginCall();
  static SignupCall signupCall = SignupCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? user = '',
    String? password = '',
  }) {
    final body = '''
{
  "user": "${user}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${GlobalGroup.baseUrl}task_management.apis.v1.user.login',
      callType: ApiCallType.POST,
      headers: {
        ...GlobalGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.message.data.user''',
      );
  dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.message.data.token''',
      );
}

class SignupCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? firstName = '',
    String? lastName = '',
    String? password = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}",
  "first_name": "${firstName}",
  "last_name": "${lastName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Signup',
      apiUrl:
          '${GlobalGroup.baseUrl}task_management.apis.v1.user.signup_with_email',
      callType: ApiCallType.POST,
      headers: {
        ...GlobalGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

/// End Global Group Code

/// Start User Group Code

class UserGroup {
  static String baseUrl = 'https://hris.digitalasiasolusindo.com/api/method/';
  static Map<String, String> headers = {};
  static CreateProjectCall createProjectCall = CreateProjectCall();
  static CreateTaskCall createTaskCall = CreateTaskCall();
}

class CreateProjectCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? projectName = '',
    String? projectDescription = '',
    String? mobileID = '',
  }) {
    final body = '''
{
  "mobile_id": "${mobileID}",
  "project_name": "${projectName}",
  "project_description": "${projectDescription}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Project',
      apiUrl: '${UserGroup.baseUrl}task_management.apis.v1.project.create',
      callType: ApiCallType.POST,
      headers: {
        ...UserGroup.headers,
        'Authorization': '${token}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic project(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class CreateTaskCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? project = '',
    String? subject = '',
    String? description = '',
    String? expEndDate = '',
    String? expectedEndTime = '',
    String? mobileId = '',
    int? assignToMe,
  }) {
    final body = '''
{
  "project": "${project}",
  "subject": "${subject}",
  "description": "${description}",
  "exp_end_date": "${expEndDate}",
  "expected_end_time": "${expectedEndTime}",
  "mobile_id": "${mobileId}",
  "assign_to_me": ${assignToMe}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Task',
      apiUrl: '${UserGroup.baseUrl}task_management.apis.v1.task.create',
      callType: ApiCallType.POST,
      headers: {
        ...UserGroup.headers,
        'Authorization': '${token}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic task(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

/// End User Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
