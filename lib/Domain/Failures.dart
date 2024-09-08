class Failures {
String errMessage;
Failures({required this.errMessage});

}
class ServerErorr extends Failures{
  ServerErorr({required super.errMessage});
}

class NetworkError extends Failures{
  NetworkError({required super.errMessage});
}
