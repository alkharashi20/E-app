import 'package:ecmorceapp/Domain/Entities/RegResEntity.dart';

/// message : "success"
/// user : {"name":"Ahmed Abd Al-Muti","email":"ahmedmuttoe@gmail.com","role":"user"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2ZDhjYmZjYjU2MjM2MDcyOTA2YzdjNiIsIm5hbWUiOiJBaG1lZCBBYmQgQWwtTXV0aSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzI1NDg0MDI5LCJleHAiOjE3MzMyNjAwMjl9.70nOHxPuV0xAgMU3Mxu-lhiU-AFZmcGb8vaNc0yhTKE"

class RegresDto extends RegResEntity{
  RegresDto({
      super.message,
      super.user,
    super.statusMsg,
      super.token,});

  RegresDto.fromJson(dynamic json) {
    message = json['message'];
    statusMsg = json['statusMsg'];

    user = json['user'] != null ? UserDto.fromJson(json['user']) : null;
    token = json['token'];
  }



}

/// name : "Ahmed Abd Al-Muti"
/// email : "ahmedmuttoe@gmail.com"
/// role : "user"

class UserDto extends UserEntity {
  UserDto({
      super.name,
      super.email,
      this.role,});

  UserDto.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    role = json['role'];
  }

  String? role;


}