/// message : "success"
/// user : {"name":"Ahmed Abd Al-Muti","email":"ahmedmutto@gmail.com","role":"user"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2ZDhjOGIwYjU2MjM2MDcyOTA2OWUwMSIsIm5hbWUiOiJBaG1lZCBBYmQgQWwtTXV0aSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzI1NDgzMTg1LCJleHAiOjE3MzMyNTkxODV9.lzX3--53ypa0fTgNyFaV3PE0JLYTah89ARPp5y1NGKA"

class RegResEntity {
  RegResEntity({this.statusMsg,
      this.message, 
      this.user, 
      this.token,});
  int?statusMsg;
  String? message;
  UserEntity? user;
  String? token;


}

/// name : "Ahmed Abd Al-Muti"
/// email : "ahmedmutto@gmail.com"
/// role : "user"

class UserEntity {
  UserEntity({
      this.name, 
      this.email, 
      this.role,});

  String? name;
  String? email;
  String? role;


}