import 'package:dartz/dartz.dart';
import 'package:ecmorceapp/Domain/Entities/RegResEntity.dart';
import 'package:ecmorceapp/Domain/Failures.dart';
import 'package:injectable/injectable.dart';

abstract class Authrepoentity{
  Future<Either<Failures,RegResEntity>>
  register(String name, String email ,String Password,String RePassword,String Phone);

}