import 'package:ecmorceapp/Domain/Entities/RegResEntity.dart';
import 'package:ecmorceapp/Domain/Failures.dart';

abstract class StateCubit{}

class IsLoading extends StateCubit{
}

class Success extends StateCubit{
  RegResEntity regResEntity;
  Success({required this.regResEntity});
}
class InitialState extends StateCubit{
}


class Failure extends StateCubit{
  Failures failures;
  Failure({required this.failures});

}

