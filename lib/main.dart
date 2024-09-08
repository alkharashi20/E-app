import 'package:ecmorceapp/Features/auth/signup/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'di.dart';

void main() {
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(490,932),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MaterialApp(
      initialRoute:Signuppage.routeName ,
        routes: {
        Signuppage.routeName:(context)=>Signuppage()
        },
      ),
    );
  }
}
