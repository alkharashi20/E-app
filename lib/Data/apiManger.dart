import 'package:dio/dio.dart';
import 'package:ecmorceapp/Core/Resources/ApiConstants.dart';
import 'package:injectable/injectable.dart';
@singleton
class ApiManger{
 late Dio dio;
ApiManger(){
  dio=Dio();
}
 Future<Response> getdata(String EndPoint,{Map<String, dynamic>? queryParameters,}){
  return dio.get(ApiConstans.BaseUrl+EndPoint,queryParameters: queryParameters);
}
 Future<Response> postdata(String EndPoint, {Map <String,dynamic>?body,Map<String,dynamic>?Headers}){

  return dio.post(ApiConstans.BaseUrl+EndPoint,data: body,options: Options(headers: Headers));
}

}