import 'package:dartz/dartz.dart';
import 'package:ecmorceapp/Domain/repoistory/AuthRepoEntity.dart';
import 'package:injectable/injectable.dart';

import '../Entities/RegResEntity.dart';
import '../Failures.dart';
@injectable
class RegUSECase{
  Authrepoentity regRepoEntity;
  RegUSECase({required this.regRepoEntity});
  Future<Either<Failures, RegResEntity>> invoke(String name, String email ,String Password,String RePassword,String Phone)
  {
  return  regRepoEntity.register(name, email, Password, RePassword, Phone);

  }

}