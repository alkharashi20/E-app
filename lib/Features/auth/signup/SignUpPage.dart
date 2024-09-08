import 'package:ecmorceapp/Domain/repoistory/AuthRepoEntity.dart';
import 'package:ecmorceapp/Domain/useCases/RegUSECase.dart';
import 'package:ecmorceapp/Features/auth/signup/Cubit/CubitReg.dart';
import 'package:ecmorceapp/Features/auth/signup/Cubit/StatesCubit.dart';
import 'package:ecmorceapp/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Core/Widgets/TextFormFailed.dart';

class Signuppage extends StatelessWidget {
  static const routeName= 'SignUp';
   Signuppage({super.key});
CubitReg reg =getIt<CubitReg>();
  @override
  Widget build(BuildContext context) {
    return BlocListener<CubitReg,StateCubit>(
      listener: (BuildContext context, state) {
        if(state is IsLoading){

        }
        else if (state is Failure){}
        else if (state is Success){}

      },
      child: Column(
        children: [
          Textformfailede(
            Label: 'Email',
            controller: reg.emailController,
          ),
          Textformfailede(
            Label: 'Password',
            controller: reg.Password,
          ),
          Textformfailede(
            Label: 'RePassword',
            controller: reg.RePassword,
          ),
          Textformfailede(
            Label: 'Phone',
            controller: reg.Phone,
          ),
          Textformfailede(
            Label: 'Name',
            controller: reg.nameController,
          ),

        ],
      ),
    );
  }
}
