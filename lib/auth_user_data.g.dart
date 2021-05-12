// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthUserData _$AuthUserDataFromJson(Map<String, dynamic> json) {
  return AuthUserData(
    uid: json['uid'] as String,
    email: json['email'] as String,
    displayName: json['displayName'] as String,
    photoURL: json['photoURL'] as String,
  );
}

Map<String, dynamic> _$AuthUserDataToJson(AuthUserData instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'photoURL': instance.photoURL,
    };
