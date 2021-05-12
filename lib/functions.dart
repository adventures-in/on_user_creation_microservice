import 'dart:convert';

import 'package:functions_framework/functions_framework.dart';
import 'package:googleapis/firestore/v1.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:on_user_created/auth_user_data.dart';
import 'package:on_user_created/user_data_extensions.dart';

const String projectId = 'PROJECT_ID';
const String collection = 'COLLECTION';
const _encoder = JsonEncoder.withIndent(' ');

@CloudFunction()
void function(CloudEvent event, RequestContext context) async {
  // Create services and a client that will authenticate as the given user.
  final serviceClient =
      await clientViaApplicationDefaultCredentials(scopes: []);
  final api = FirestoreApi(serviceClient);

  // Extract and decode the data in the CloudEvent.
  final dataMap = event.data as Map<String, Object?>;
  final messageMap = dataMap['message'] as Map<String, Object?>;
  final encodedUserData = messageMap['data'] as String;
  final decodedUserData =
      json.decode(utf8.decode(base64.decode(encodedUserData)))
          as Map<String, Object?>;

  // Extract the auth user data from the decoded data.
  final dataMap2 = decodedUserData['data'] as Map<String, Object?>;
  final messageMap2 = dataMap2['message'] as Map<String, Object?>;

  final authUserData = AuthUserData.fromJson(messageMap2);

  print(_encoder.convert(authUserData.toJson()));

  final requestDocument = authUserData.toDocument();
  final responseDocument = await api.projects.databases.documents
      .createDocument(requestDocument,
          'projects/$projectId/databases/(default)/documents', collection,
          documentId: authUserData.uid);

  print(_encoder.convert(responseDocument.toJson()));
}
