import 'package:dartz/dartz.dart';
import 'package:ecmorceapp/Data/Data_Sources/RemoteDateSource/Auth_RemoteDataSource.dart';

import 'package:ecmorceapp/Domain/Entities/RegResEntity.dart';

import 'package:ecmorceapp/Domain/Failures.dart';
import 'package:injectable/injectable.dart';

import '../../Domain/repoistory/AuthRepoEntity.dart';
@Injectable(as: Authrepoentity)
class AuhtRepoIMPL extends Authrepoentity{
  AuthRemoteDataSource remoteDataSource;
  AuhtRepoIMPL({required this.remoteDataSource});
  @override
  Future<Either<Failures, RegResEntity>> register(String name, String email, String Password, String RePassword, String Phone) async{
    // TODO: implement register
   var either = await remoteDataSource.register(name, email, Password, RePassword, Phone);
   
   return either.fold((l)=>
       Left(l),
           (r)=>Right(r));
  }
  
}