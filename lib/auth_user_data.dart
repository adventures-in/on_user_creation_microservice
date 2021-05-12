import 'package:json_annotation/json_annotation.dart';

part 'auth_user_data.g.dart';

@JsonSerializable()
class AuthUserData {
  final String uid;
  final String email;
  final String displayName;
  final String photoURL;
  AuthUserData(
      {required this.uid,
      required this.email,
      required this.displayName,
      required this.photoURL});
  factory AuthUserData.fromJson(Map<String, Object?> json) =>
      _$AuthUserDataFromJson(json);
  Map<String, Object?> toJson() => _$AuthUserDataToJson(this);
}
