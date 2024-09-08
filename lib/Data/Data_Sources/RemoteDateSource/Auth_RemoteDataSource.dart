import 'package:dartz/dartz.dart';

import '../../../Domain/Entities/RegResEntity.dart';
import '../../../Domain/Failures.dart';

abstract class AuthRemoteDataSource{

  Future<Either<Failures,RegResEntity>>
  register(String name, String email ,String Password,String RePassword,String Phone);
}