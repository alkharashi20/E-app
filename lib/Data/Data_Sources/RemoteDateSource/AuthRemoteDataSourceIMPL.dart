import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:ecmorceapp/Data/EndPoint.dart';
import 'package:ecmorceapp/Data/Model/RegresDto.dart';
import 'package:ecmorceapp/Data/apiManger.dart';

import 'package:ecmorceapp/Domain/Entities/RegResEntity.dart';

import 'package:ecmorceapp/Domain/Failures.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'Auth_RemoteDataSource.dart';
@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceIMPL extends AuthRemoteDataSource{
  ApiManger apiManger;
  AuthRemoteDataSourceIMPL({required this.apiManger});
  @override
  Future<Either<Failures, RegresDto>> register(String name, String email, String Password, String RePassword, String Phone) async{
var checkConn = Connectivity().checkConnectivity();
if(checkConn==ConnectivityResult.wifi|| checkConn==ConnectivityResult.mobile){
    var response = await apiManger.postdata(EndPoint.Reg,body: {

        "name": name,
        "email":email,
        "password":Password,
          "rePassword":RePassword,
        "phone":Phone

    });
   var responsecode= RegresDto.fromJson(response);
   if(responsecode.statusMsg!>=201 && responsecode.statusMsg!<300){
return right(responsecode);
   }else{
     return left(NetworkError(errMessage: 'errMessage'));

   }

   }else{
  return left(ServerErorr(errMessage: 'errMessageL'));
}
  }

  
}