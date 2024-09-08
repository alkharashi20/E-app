import 'package:dartz/dartz.dart';
import 'package:ecmorceapp/Domain/Failures.dart';
import 'package:ecmorceapp/Features/auth/signup/Cubit/StatesCubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../Domain/useCases/RegUSECase.dart';
@injectable
class CubitReg extends Cubit<StateCubit>{
  RegUSECase regUSECase;
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var Password = TextEditingController();
  var RePassword = TextEditingController();
  var Phone = TextEditingController();

CubitReg({required this.regUSECase}):super(InitialState());
void reg()async{
    emit(IsLoading());
    var either = await regUSECase.invoke(
        nameController.text, emailController.text, Password.text,
        RePassword.text, Phone.text);
either.fold((l)=>{
  emit(Failure(failures: ServerErorr(errMessage: 'errMessage')))
}, (r)=>emit(Success(regResEntity: r)));
  }
}



