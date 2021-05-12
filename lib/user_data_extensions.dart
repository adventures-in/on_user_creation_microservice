import 'package:googleapis/firestore/v1.dart';
import 'package:on_user_created/auth_user_data.dart';

extension AuthUserDataExtension on AuthUserData {
  Document toDocument() {
    return Document()
      ..fields = {
        'uid': Value()..stringValue = uid,
        'email': Value()..stringValue = email,
        'displayName': Value()..stringValue = displayName,
        'photoURL': Value()..stringValue = photoURL
      };
  }
}
