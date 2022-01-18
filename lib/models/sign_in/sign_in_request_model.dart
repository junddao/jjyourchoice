import 'dart:convert';

class SignInRequestModel {
  String? firebaseIdToken;
  String? uid;
  String? osType;
  String? osVersion;
  String? deviceModel;
  SignInRequestModel({
    this.firebaseIdToken,
    this.uid,
    this.osType,
    this.osVersion,
    this.deviceModel,
  });

  Map<String, dynamic> toMap() {
    return {
      'firebaseIdToken': firebaseIdToken,
      'uid': uid,
      'osType': osType,
      'osVersion': osVersion,
      'deviceModel': deviceModel,
    };
  }

  factory SignInRequestModel.fromMap(Map<String, dynamic> map) {
    return SignInRequestModel(
      firebaseIdToken: map['firebaseIdToken'],
      uid: map['uid'],
      osType: map['osType'],
      osVersion: map['osVersion'],
      deviceModel: map['deviceModel'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SignInRequestModel.fromJson(String source) =>
      SignInRequestModel.fromMap(json.decode(source));
}
